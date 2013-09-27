if (typeof SM6 === 'undefined') { SM6 = {}; }
if (SM6.Shop === undefined) { SM6.Shop = (function() {
  
  var _alert;
  var _connector;
  var _errorHandler;
  var _errorMessagesAsText = true;

  var continueShopping = function(event) {
    event.preventDefault();
    _connector.open($(event.target).attr('data-href'));
  };
  //
  var coreParameters = function(parameters) {
    return $.extend({ 'desktop' : true, 'isFacebook' : false, 'mobile' : false }, (parameters === 'undefined' ? {} : parameters));
  };
  
  var createMustacheData = function(result, name, baseUrl) {
    var hostname = document.location.hostname;
    var data = {};
    data[name] = $.map(result.cartlines, function(cartline) {
      return {
        'id' : cartline.product.product_id,
        'hostname' : hostname,
        'hostnameEncoded' : encodeURIComponent(hostname),
        'title' : cartline.product.title,
        'titleEncoded' : encodeURIComponent(cartline.product.title),
        'image' : (cartline.product.main_image_url === undefined ? false : {
          'original' : cartline.product.main_image_url,
          'originalEncoded' : encodeURIComponent(cartline.product.main_image_url),
          'thumbnail' : cartline.product.main_image_url
        }),
        'productPage' : baseUrl + cartline.product.url.url,
        'productPageEncoded' : encodeURIComponent(baseUrl + cartline.product.url.url),
        'variant' : {
          'id' : cartline.product.product_id,
          'title' : (cartline.product.variant_description === undefined ? false : cartline.product.variant_description),
          'price' : cartline.product.price,
          'quantity' : cartline.item_count,
          'linePrice' : cartline.line_price
        }
      };
    });
    return data;
  };
  
  var createRequest = function(method, parameters) {
    return {
      'id'      : 'shoptest1',
      'method'  : method,
      'params'  : [ $.extend({ 'X-SM-Auth' : tref.tok }, (parameters === 'undefined' ? {} : parameters)) ],
      'version' : '1.1'
    };
  };

  return {
    
    ///////////////
    // CONNECTOR //
    ///////////////
    
    Connector : (function() {
      
      return {
        
        open: function(url) {
          window.location = url;
        },
        
        send: function(request, handler, url) {
          $.ajax({
            'cache'       : false,
            'contentType' : 'application/json',
            'data'        : JSON.stringify(request),
            'dataType'    : 'json',
            'error'       : function() { handler(null); },
            'success'     : function(data) {
              if (typeof data === 'object' && typeof data.error === 'object') {
                // backend error, no specific message to show to user
                handler(null);
              } else {
                handler(data);
              }
            },
            'type'        : 'POST',
            'url'         : (url === undefined ? '/cgi-bin/shop.cgi' : url)
          });
        }
        
      }
      
    })(),

    ////////////
    // ERRORS //
    ////////////

    Error : (function() {
        var sBullet = "\u2022 ";
        var sBoldTag = '<b>';
            sBoldTag = _errorMessagesAsText ? '' : sBoldTag;
        var sEndBoldTag = '</b>';
            sEndBoldTag = _errorMessagesAsText ? '' : sEndBoldTag;
        var sBreakTag = '<br />';
            sBreakTag = _errorMessagesAsText ? '\n' : sBreakTag;
        var sSorryText = 'Sorry, the item ';
        var sReviewCart = 'Please review your cart.';
        var sTryAgain = ' Please try again.';
        var unknownErrorMessage = 'Sorry, the action failed.' + sTryAgain;

        return {
          processRequestError: function(requestType, redirectUrl) {
            var messages = {
              "addToBasket"   : "Sorry, we could not add to cart." + sTryAgain,
              "completeOrder" : "Sorry, we could not display your order." + sTryAgain,
              "setCartShippingOption" : "Sorry, we could not update shipping." + sTryAgain,
              "setExpressCheckout" : "Sorry could not proceed to PayPal." + sTryAgain,
              "recalculateCart" : "Sorry, we could not update cart." + sTryAgain,
              "removeFromCart" : "Sorry, we could not delete item from cart." + sTryAgain,
              "noShippingChosen" : "Please choose a shipping option"
            };
            if (messages[requestType]) {
              _alert(messages[requestType]);
            } else {
              _alert(unknownErrorMessage);
            }
            if (redirectUrl !== undefined) {
              _connector.open(redirectUrl);
            }
          },

          processBackendError: function(result, redirectUrl) {
            var messages = {
              "shop.lib.PaymentError" : function(errorType)  {
                var message = "Sorry, we could not display your order." + sTryAgain;
                  switch(errorType) {
                    case "INVALID_ORDER" : message = "Invalid order. Probably another order is in process." + sBreakTag + sBreakTag + sReviewCart; break;
                    case "COMPLETED_CART" : message = "Invalid order. Probably another order was completed already." + sBreakTag + sBreakTag + sReviewCart; break;
                    case "ERR_PAYMENT" : message = "Payment failed." + sTryAgain; break;
                    case "ERR_PAYPAL" : message = "Payment via PayPal failed." + sTryAgain; break;
                  }
                _alert(message);
              },
              "shop.lib.ExpressCheckoutError" : function() {
                _alert("Sorry, some of the items in your basket are no longer available." + sBreakTag + sBreakTag + sReviewCart);
                _connector.open(window.location);
              },
              "shop.lib.StockLimitedBasket" : function(result) {
                var variant_title;
                if (result.variant_title === undefined) {
                  variant_title = '';
                } else {
                  variant_title = ' ('+ result.variant_title + ')';
                }
                var message = "Sorry, the item " + sBoldTag + result.title + variant_title + sEndBoldTag;
                switch(result.limit_reason) {
                  case "SOLD_OUT":
                    message += ' has sold out.';
                    break;
                  case "QUANTITY":
                    message += ' has limited quantity.';
                    break;
                  case "UNAVAILABLE":
                  default:
                    message += ' is not available.';
                    break;
                }
                _alert(message);
                _connector.open(window.location);
              },
              "shop.lib.StockLimitedCart" : function(result) {
                var product_id   = result.limits[0][0];
                var limit_reason = result.limits[0][1];
                var product;
                for (var i = 0; i < result.cart.cartlines.length; i++) {
                  if (result.cart.cartlines[i].product.product_id == product_id) {
                    product = result.cart.cartlines[i].product;
                    break;
                  }
                }
                var variant_title;
                if (product.variant_description === undefined) {
                  variant_title = '';
                } else {
                  variant_title = ' ('+ product.variant_description + ')';
                }
                var title = product.title + variant_title;
                var message = 'Sorry, some of the items in your basket are not available.' + sBreakTag + sBreakTag +
                  sBoldTag + sBullet + title + sEndBoldTag;
                switch(result.limits[0][1]) {
                  case "SOLD_OUT":
                    message += ' has sold out.';
                    break;
                  case "QUANTITY":
                    message += ' has limited quantity.';
                    break;
                  case "UNAVAILABLE":
                  default:
                    message += ' is not available.';
                    break;
                }
                message += sBreakTag + sBreakTag + sReviewCart;
                _alert(message);
                SM6.Shop.Cart.reinitialize(result.cart);
              }
            };
            var responseType = result["!"];
            messages[responseType](result);
            if (redirectUrl !== undefined) {
              _connector.open(redirectUrl);
            }
          }
        }
    })(),

    ////////////
    // BASKET //
    ////////////
    
    Basket : (function() {
      
      var addToCart = function(event) {
        // set pending status for all baskets
        event.preventDefault();
        $('div.basket .label').each(function(index, label) {
          display(label);
        });
        var button = $(event.target);
        _connector.send(createRequest('addToBasket', coreParameters({ 'product_id' : button.attr('data-id') })), function(response){
          handleAddToBasket(response);
          if (response !== null && response.result['!'] === 'shop.lib.Basket') {
            setGoToCartState(button);
          }
        });
      };
      
      var display = function(label, count) {
        var displayElement = $(label).children('div.basket .label .display');
        if (count === undefined) {
          $(displayElement).attr('data-prevPending', $(displayElement).text());
          $(displayElement).text($(label).children('div.basket .label .pending').text());
        }
        else {
          var template = $(label).children('div.basket .label ' + (count === 1 ? '.single' : '.multiple')).text();
          $(displayElement).text(template.replace('#', count));
        }
      };

      var displayDefault = function(label) {
        var displayElement = $(label).children('div.basket .label .display');
        var prevValue = $(displayElement).attr('data-prevPending');
        if (prevValue === undefined) {
          prevValue = '';
        }
        $(displayElement).text(prevValue);
      };
      
      var goToCart = function(event) {
        _connector.open($(event.target).attr('data-cartUrl'));
      };

      var handleAddToBasket = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.Basket') {
          handleSuccessRequest(response.result);
        } else {
          handleErrorRequest();
          if (response === null) {
            _errorHandler.processRequestError("addToBasket");
          } else {
            _errorHandler.processBackendError(response.result);
          }
        }
      };

      var handleGetBasket = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.Basket') {
          handleSuccessRequest(response.result);
        }
        // ignoring errors
      };

      var handleSuccessRequest = function(result) {
        $('div.basket .label').each(function(index, label) {
          display(label, result.item_count);
        });
      };
      var handleErrorRequest = function() {
        $('div.basket .label').each(function(index, label) {
          displayDefault(label);
        });
      };
      
      var setAddToCartState = function(button) {
        button.unbind('click').text('Add to cart').bind('click', addToCart);
      };
      
      var setGoToCartState = function(button) {
        button.unbind('click').text('Go to cart').bind('click', goToCart);
      };
      
      return {
        
        initialize: function(confirmationReady) {
          $('div.basket .label').each(function(index, label) {
            display(label);
          });
          if ($('div.shoppingConfirmation').length === 0 || confirmationReady === true) {
            setAddToCartState($('.addToCart'));
            if ($('div.basket .label').length > 0) {
              _connector.send(createRequest('getBasket'), handleGetBasket);
            }
          }
        },

        reinitialize: function(count) {
          $('div.basket .label').each(function(index, label) {
            display(label, count);
          });
        },

        resetButtonState: setAddToCartState
        
      };
      
    })(),
    
    //////////
    // CART //
    //////////
    
    Cart : (function() {
      
      //----------
      // Summary -
      //----------
      
      var _currentShippingOptionIndex;

      var changeShipping = function(event) {
        var options = event.target.options;
        if($(options.item(0)).attr("data-id") == -1) {
          options.remove(0);
        }
        if (_currentShippingOptionIndex !== options.selectedIndex) {
          _currentShippingOptionIndex = options.selectedIndex;
          var id = options[options.selectedIndex].attributes.getNamedItem('data-id').nodeValue;
          _connector.send(createRequest('setCartShippingOption', { 'id' : id }), handleChangeShippingResponse);
        }
      };
      
      var checkout = function(event, paypalAccount) {
        event.preventDefault();
        if ($('.shippingDropdown').find(':selected').attr('data-id') !== '-1') {
          var request = createRequest('setExpressCheckout', coreParameters({ 'paypal_account' : (paypalAccount ? 1 : 0) }));
          _connector.send(request, handleCheckoutResponse, '/_pp/express');
        } else {
            _errorHandler.processRequestError("noShippingChosen");
        }
      };

      var handleChangeShippingResponse = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.Cart') {
          updateSummary(response.result);
        } else {
          _errorHandler.processRequestError("setCartShippingOption");
        }
      };

      var handleCheckoutResponse = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.ExpressCheckout') {
          _connector.open(response.result.url.url);
        } else if (response === null) {
          _errorHandler.processRequestError("setExpressCheckout");
        } else {
          _errorHandler.processBackendError(response.result);
        }
      };
      
      var initializeSummaryControls = function() {
        $('div.shoppingCart .summary .shippingDropdown').change(changeShipping);
        $('div.shoppingCart .summary .paypal').click(function(event) { checkout(event, true); });
        $('div.shoppingCart .summary .checkout').click(function(event) { checkout(event, false); });
      };
      
      var shippingOptionIndex = function(regions) {
        var i, j, n;
        for (i = 0, n = 0; i < regions.length; i += 1) {
          for (j = 0; j < regions[i].options.length; j += 1, n += 1) {
            if (regions[i].options[j].selected) {
              return n;
            }
          }
        }
        return -1;
      };
      
      var updateSummary = function(result) {
        _currentShippingOptionIndex = shippingOptionIndex(result.shipping_regions);
        $('div.shoppingCart .summary .shippingDropdown')[0].options.selectedIndex = (_currentShippingOptionIndex === -1 ? 0 : _currentShippingOptionIndex);
        $('div.shoppingCart .summary .total').text(result.total_price === undefined ? '' : result.total_price);
      };
      
      //--------
      // Items -
      //--------
      
      var _baseUrl;
      var _itemsTemplate;
      
      var changeQuantity = function(event) {
        event.preventDefault();
        var input = $(event.target);
        var quantity = input.val();
        var originalQuantity = input.attr('data-quantity');
        var success = false;
        if (/^\d+$/.test(quantity)) {
          quantity = parseInt(quantity);
          if (quantity > 0 && quantity !== parseInt(originalQuantity)) {
            success = true;
            _connector.send(createRequest('recalculateCart', { 'cartlines' : [ [input.attr('data-id'), quantity] ] }), handleRecalculateResponse);
          }
        }
        if (!success) {
          input.val(originalQuantity);
        }
      };
      
      var initializeTemplate = function() {
        _baseUrl = $('div.shoppingCart .items').attr('data-baseUrl');
        _itemsTemplate = $('div.shoppingCart .shoppingCartItemsTemplate').html().replace(/\{=\{/g, '{{');
      };
      
      var populateCart = function(result) {
        $('div.shoppingCart .items li').remove();
        $('div.shoppingCart .items').append(Mustache.render(_itemsTemplate, createMustacheData(result, 'shoppingCartItems', _baseUrl)));
          $('div.shoppingCart .items li .quantity')
              .change(changeQuantity)
              .keydown(function (e) {
                  if (e.keyCode == 13) changeQuantity(e);
              });
        $('div.shoppingCart .items li .removeFromCart').click(removeFromCart);
        // :TODO:LJ: needs tests and refactoring; use more specific selector
        $('.imageCrop').each(function() { SM6.Shop.Utils.fitImage(this, false); });
        $('.imageScaleToFit').each(function() { SM6.Shop.Utils.fitImage(this, true); });
          SM6.Shop.Utils.correctPageHeight('shoppingCart');
          $(':button').blur();
      };
      
      var removeFromCart = function(event) {
        event.preventDefault();
        _connector.send(createRequest('removeFromCart', { 'product_id' : $(event.target).attr('data-id') }), handleRemoveResponse);
      };
      
      var handleRecalculateResponse = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.Cart') {
          handleCart(response.result);
        } else if (response === null) {
          _errorHandler.processRequestError("recalculateCart");
        } else {
          $('div.shoppingCart .items li .quantity').each(function(index, input) {
            $(input).val($(input).attr('data-quantity'));
          });
          _errorHandler.processBackendError(response.result);
        }
      };

      var handleRemoveResponse = function(response) {
        if (response !== null && response.result['!'] === 'shop.lib.Cart') {
          handleCart(response.result);
        } else {
          _errorHandler.processRequestError("removeFromCart");
        }
      };

      var setShippingOptions = function(result) {
        var selectedShipping = shippingOptionIndex(result.shipping_regions);
        var select = $('.shippingDropdown');
        if (selectedShipping === -1 && select.find(':selected').attr('data-id') !== '-1') {
          var choose = 'Choose your shipping';
          var option = $('<option>', {'data-id' : '-1', 'disabled' : 'disabled', 'selected': 'selected'}).text(choose);
          select.prepend(option);
          // this is the only way I found to make the option to be selected in IE
          // select.val(choose) - doesn't work
          $(select)[0].options[0].selected = true;
        }
      };

      //---------
      // Module -
      //---------
      
      var handleCart = function(result) {
        updateSummary(result);
        populateCart(result);
        setShippingOptions(result);
        SM6.Shop.Basket.reinitialize(result.total_item_count);
      };
      
      return {
        
        initialize: function() {
          if ($('div.shoppingCart').length > 0) {
            $('div.shoppingCart .continueShopping').click(continueShopping);
            _connector.send(createRequest('getCart', coreParameters()), function(response) {
              if (response !== null) {
                initializeTemplate();
                initializeSummaryControls();
                handleCart(response.result);
              }
            });
          }
        },

        reinitialize: function(cart) {
          handleCart(cart);
        }

      };
    })(),
    
    //////////////////
    // CONFIRMATION //
    //////////////////
  
    Confirmation : (function() {

      var reinitializeShareScripts = function() {
        var container = $('div.shoppingConfirmation .items')[0];
        // Pin It
        // have to remove and add script again since pinterest doesn't support
        // dynamic button creation
        var pinJs = $('script[src*="assets.pinterest.com/js/pinit.js"]');
        if (pinJs.length != 0) {
          pinJs.remove();
        }
        var newPinJs = '<script src="//assets.pinterest.com/js/pinit.js"></script>';
        $('body').append(newPinJs);
        // Facebook
        if (typeof FB !== 'undefined') {
          FB.XFBML.parse(container);
        }
        // Twitter
        if (typeof twttr != 'undefined') {
          twttr.widgets.load();
        }
      };

      var populateConfirmation = function(result) {
        var baseUrl = $('div.shoppingConfirmation .items').attr('data-baseUrl');
        var template = $('div.shoppingConfirmation .shoppingConfirmationItemsTemplate').html().replace(/\{=\{/g, '{{');
        $('div.shoppingConfirmation .items').append(Mustache.render(template, createMustacheData(result, 'shoppingConfirmationItems', baseUrl)));
        // :TODO:LJ: needs tests and refactoring; use more specific selector
        $('.imageCrop').each(function() { SM6.Shop.Utils.fitImage(this, false); });
        $('.imageScaleToFit').each(function() { SM6.Shop.Utils.fitImage(this, true); });
        SM6.Shop.Utils.correctPageHeight('shoppingConfirmation');
      };
      
      var updateSummary = function(result) {
        $('div.shoppingConfirmation .summary').css('display', 'block');
        $('div.shoppingConfirmation .summary .subtotal').text(result.subtotal_price);
        $('div.shoppingConfirmation .summary .shipping').text(result.shipping_price);
        $('div.shoppingConfirmation .summary .total').text(result.total_price);
      };

      var showPageElements = function() {
        $('div#content').children('[id^="page_"]').removeClass('hidden');
      };

      var processConfirmation = function(result) {
        showPageElements();
        updateSummary(result);
        populateConfirmation(result);
        reinitializeShareScripts();
        SM6.Shop.Basket.initialize(true);
      };

      var processResponse = function(response) {
        var responseType;
        var cartUrl = $('ul.items').attr('data-cartUrl');
        if (response === null) {
          _errorHandler.processRequestError("completeOrder", cartUrl);
        } else {
          responseType = response.result['!']
          if (responseType == "shop.lib.Confirmation") {
            processConfirmation(response.result);
          } else {
            _errorHandler.processBackendError(response.result, cartUrl);
          }
        }
      }

      return {
        
        initialize: function() {
          if ($('div.shoppingConfirmation').length > 0) {
            $('div.shoppingConfirmation .continueShopping').click(continueShopping);
            _connector.send(createRequest('completeOrder'), function(response) {
              processResponse(response);
            }, '/_pp/express');
          }
        }
        
      };
      
    })(),
    
    //////////////
    // VARIANTS //
    //////////////
    
    Variants : (function() {
      
      var selectedAttribute = function(dropdown, name) {
        var attribute = dropdown.options[dropdown.options.selectedIndex].attributes.getNamedItem(name);
        return (attribute === null ? null : attribute.nodeValue);
      };

      var hideButton = function(button) {
          $(button).css({visibility: 'hidden'})
          .unbind('click')
          .bind('click', function (event) { event.preventDefault() } )
      };

      var showButton = function(button) {
          $(button).css({visibility: 'visible'})
      };

      var update = function(section, dropdown) {
        var button = $(section).find('.addToCart');
        button.attr('data-id', selectedAttribute(dropdown, 'data-id'));
        button.attr('data-unavailable', selectedAttribute(dropdown, 'data-unavailable'));
        SM6.Shop.Basket.resetButtonState(button);
        var unavailable = selectedAttribute(dropdown, 'data-unavailable');
        if (unavailable === null) {
          $(section).find('span.price').text(selectedAttribute(dropdown, 'data-price'));
          showButton(button);
        }
        else {
          $(section).find('span.price').text(selectedAttribute(dropdown, 'data-price') + ' (' + unavailable + ')');
          hideButton(button);
        }
      };
      
      return {
        
        initialize: function() {
          $('.addToCart').each(function(index, button) {
            var unavailable = $(button).attr('data-unavailable');
            if (typeof unavailable === 'string' && unavailable !== '') {
              hideButton(button);
            }
          });
          $('select.variantsDropdown').each(function(index, dropdown) {
            var closest = $(dropdown).closest('li');
            var section = (closest.length === 0 ? $('body') : closest)[0];
            $(dropdown).change(function() { update(section, dropdown); });
            update(section, dropdown);
          });
        }
        
      };
      
    })(),

    ////////////////
    // INITIALIZE //
    ////////////////
    
    initialize : function(connector, alertMethod, errorHandler) {
      _connector = (connector === undefined ? SM6.Shop.Connector : connector);
      _alert = (alertMethod === undefined ? alert : alertMethod);
      _errorHandler = (errorHandler === undefined ? SM6.Shop.Error : errorHandler);
      SM6.Shop.Basket.initialize();
      SM6.Shop.Cart.initialize();
      SM6.Shop.Confirmation.initialize();
      SM6.Shop.Variants.initialize();
    }
    
  }
  
})(); }
$(function() { SM6.Shop.initialize(); });

// :TODO:LJ: needs tests and refactoring
// This still needs refactoring, I've just renamed it to what it is, SM6.Shop.Util

if (typeof SM6 === 'undefined' || SM6 === null) { SM6 = {}; }
if (typeof SM6.Shop === 'undefined' || SM6.Shop === null) { SM6.Shop = {}; }
if (typeof SM6.Shop.Utils === 'undefined' || SM6.Shop.Utils === null) {

    SM6.Shop.Utils = (function() {
        var pageFooterId    = 'footer';
        var pageContentId   = 'content';

        //private objects
        var fitImage = function(img, scaleToFit) {
            var el = $(img);

            // get image dimensions
            var imgWidth = el.width();
            var imgHeight = el.height();
            if ( !imgWidth && !imgHeight ) return;

            // get image's parent dimensions
            var elParent = el.parent();
            if ( elParent.prop("tagName").toLowerCase() == "a" ) {
                elParent = elParent.parent();
            }
            if ( !elParent ) return
            var parentWidth = elParent.width();//parseInt(elParent.css("width"));
            var parentHeight = elParent.height();//parseInt(elParent.css("height"));
            if (!parentWidth || !parentHeight) return;

            // calculate the scale factor based on scaleToFit flag
            var widthScale = parentWidth / imgWidth;
            var heightScale = parentHeight / imgHeight;
            var scale;
            if (scaleToFit) {
                if (widthScale < heightScale) scale = widthScale; else scale = heightScale;
            } else {
                if (widthScale > heightScale) scale = widthScale; else scale = heightScale;
            }

            // calculate new image dimensions and offsets relative to image parent
            var newWidth = Math.round(imgWidth * scale);
            var newHeight = Math.round(imgHeight * scale);
            var marginTop = Math.round((parentHeight - newHeight) / 2) + "px";
            var marginLeft = Math.round((parentWidth - newWidth) / 2) + "px";

            // set new image dimensions and margins, show image
            el.width(newWidth + "px");
            el.height(newHeight + "px");
            el.css({"margin-top": marginTop, "margin-left": marginLeft});
            if (el.is(':hidden')) el.show();
        };

        var alignCenter = function(block) {
            var el = $(block);
            var children = el.children();
            if ( children.length == 0 ) return;
            var child = children.first();

            var elParent = el.parent();
            if ( !elParent ) return;
            var divWidth = elParent.width();
            var divHeight = elParent.height();
            if (!divWidth || !divHeight) return;

            var elWidth = el.width();
            var elHeight = el.height();
            if (!elWidth || !elHeight) return;

            var marginTop    = child.css('margin-top');
            var marginBottom = child.css('margin-bottom');
            var marginLeft   = child.css('margin-left');
            var marginRight  = child.css('margin-right');
            var dimensionDiff;
            var marginOffset;
            var elMargin;
            if ( child.hasClass('horizontal') ) {
                // horizontal layout
                dimensionDiff = divWidth - elWidth;
                marginOffset = parseInt(marginLeft) - parseInt(marginRight);
                elMargin = Math.round((dimensionDiff - marginOffset) / 2);
                el.css({"margin-left": elMargin});
            } else {
                // vertical layout
                dimensionDiff = divHeight - elHeight;
                marginOffset = parseInt(marginTop) - parseInt(marginBottom);
                elMargin = Math.round((dimensionDiff - marginOffset) / 2);
                el.css({"margin-top": elMargin});
            }
        };

        var applyMarginsForDescription = function(div) {
            var el = $(div);
            var lineHeight = el.css("line-height");
            var margin;
            if ( lineHeight ) {
                margin = lineHeight;
            } else {
                margin = "1em";
            }
            el.find('p').css({"margin-bottom": margin});
        };

        // Get the page footer height if it exists, returns 0 otherwise
        var pageFooterHeight = function() {
            var div = $('#'+pageFooterId);
            if ($(div).length > 0) {
                return parseInt($(div).outerHeight(true));
            } else {
                return 0;
            }
        };

        var correctPageHeight = function(shopContainer) {
            // get the distance from page start to the end of the shop container
            var element = $('.'+shopContainer).first();
            var totalHeight = parseInt($(element).position().top) + parseInt($(element).outerHeight(true));
            // add optional page footer height
            totalHeight += pageFooterHeight();
            // compare with the specified minimum height, and chose the larger of the two
            $('#'+pageContentId).each(function() {
                var oldHeight = $(this).attr('style').match(/min-height: ([0-9]*)px;/)[1];
                var newHeight = Math.max(totalHeight, oldHeight);
                $(this).height(newHeight);
                $('#'+pageContentId).height(newHeight);
            })
        };

        //back to product list link (set & get)
        var productLinkCookieSeperator = '/#-#/';
        var productLinkCookieName      = 'sm_web_shop_category';
        var createCookie = function(name,value,days) {
        	if (days) {
        		var date = new Date();
        		date.setTime(date.getTime()+(days*24*60*60*1000));
        		var expires = "; expires="+date.toGMTString();
        	}
        	else var expires = "";
        	document.cookie = name+"="+value+expires+"; path=/";
        };

        var readCookie = function(name) {
        	var nameEQ = name + "=";
        	var ca = document.cookie.split(';');
        	for(var i=0;i < ca.length;i++) {
        		var c = ca[i];
        		while (c.charAt(0)==' ') c = c.substring(1,c.length);
        		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        	}
        	return null;
        };

        var setProductListLinkCookie = function(linkElement) {
            $(linkElement).click(function(e){
                //store cookie information
                var productLink = $(this).attr('href');
                var categoryUrl = document.location.pathname;
                var cookieValue = encodeURI(categoryUrl + productLinkCookieSeperator + productLink);
                createCookie(productLinkCookieName, cookieValue, 365);
            });
        };

        var applyProductListLink = function(linkElement) {
            //validation to check if category links to the page before or session
            var cookieValue = decodeURI(readCookie(productLinkCookieName));
            //if the item cant be split dont change the url
            if (cookieValue != undefined && cookieValue.match(productLinkCookieSeperator)) {
                var cookieParts = cookieValue.split(productLinkCookieSeperator);
                var categoryUrl = cookieParts[0];
                if (cookieParts[1] == document.location.pathname) {
                    $(linkElement).attr('href',categoryUrl);
                }
            }
        };

        //public objects

        return {
            fitImage: function(img, scaleToFit) {
                if (isImageLoaded(img)) {
                    fitImage(img, scaleToFit);
                } else {
                    $(img).load(function(){
                        fitImage(img, scaleToFit);
                    });
                }
                function isImageLoaded (img) {
                    if (typeof img.naturalWidth != 'undefined' && img.naturalWidth == 0) {
                        return false;
                    }
                    if (typeof img.naturalWidth == 'undefined' && !$(img).width()) {
                        return false;
                    }
                    return true;
                }
            },
            alignCenter: function(block) {
                alignCenter(block);
            },
            applyMarginsForDescription: function(div) {
                applyMarginsForDescription(div);
            },
            correctBasketHeight: function(div) {
                correctBasketHeight(div);
            },
            correctPageHeight: function(shopContainer) {
                correctPageHeight(shopContainer);
            },
            setProductListLinkCookie: function(link) {
                setProductListLinkCookie(link);
            },
            applyProductListLink: function(link) {
                applyProductListLink(link);
            }
        }
    })();


    $(document).ready(function(){
        $('.thumbnailsBlockcenter').each(function(){
            SM6.Shop.Utils.alignCenter(this);
        });
        $('.imageCrop').each(function(){
            SM6.Shop.Utils.fitImage(this, false);
        });
        $('.imageScaleToFit').each(function(){
            SM6.Shop.Utils.fitImage(this, true);
        });
        $('.productDescription').each(function(){
            SM6.Shop.Utils.applyMarginsForDescription(this);
        });
        var shopContainer;
        if ($('.catalogue').length > 0) shopContainer = 'catalogue';
        else if ($('.productDetail').length > 0) shopContainer = 'productDetail';
        else if ($('.shoppingCart').length > 0) shopContainer = 'shoppingCart';
        else if ($('.shoppingConfirmation').length > 0) shopContainer = 'shoppingConfirmation';
        if (shopContainer) SM6.Shop.Utils.correctPageHeight(shopContainer);
        $('.catalogue .item a.productUrl').each(function() {
            SM6.Shop.Utils.setProductListLinkCookie(this);
        });
        $('.productDetail a.catalogueBackLink').each(function() {
            SM6.Shop.Utils.applyProductListLink(this);
        });
    });
}
