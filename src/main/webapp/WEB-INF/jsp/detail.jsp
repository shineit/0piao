<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <style>
  body {
      font-size: 12px;
      color: #000;
      font-family: tahoma,arial,'\5b8b\4f53',sans-serif;
      line-height: 18px;
  }

      .box-cont {
          border: solid #dedede 1px;
          padding: 10px;
          background-color: #FFF;
          border: 0;
          padding-bottom: 20px;
          top: 150px;
          position: absolute;

      }
      .deal-title {
          position: relative;
          padding: 10px 20px 22px 20px;
          z-index: 20;
          font-family: "Microsoft YaHei",\9ed1\4f53,arial,sans-serif;
          line-height: 1.2;
      }
      .deal-title h1 {
          font-family: "Microsoft YaHei",\9ed1\4f53,arial,sans-serif;
          font-size: 30px;
          font-weight: bold;
          line-height: 1.2;
          color: #111;
      }
      .deal-title .deal-des {
          font-size: 24px;
          color: #777;
          padding-top: 10px;
          font-weight: normal;
          line-height: 30px;
      }
      .main {
          float: left;
          clear: left;
          font-family: Helvetica,arial,sans-serif;
          margin-right: 10px;
          width: 222px;
          background-color: #f4f4f4;
          position: relative;
      }
      .main-text .buy {
          padding: 29px 0 15px;
          margin: 0 15px;
          border-bottom: 1px solid #dedede;
          height: 192px;
      }
      .main-text .Price-font-s {
          font-size: 36px;
          font-weight: bold;
          height: 40px;
          line-height: 40px;
          color: #0089D1;
          text-align: center;
      }
      .main-text .Price-font {
          overflow: inherit;
      }
      .Price-font {
          font-family: Helvetica,arial,sans-serif!important;
      }
      .main-text .discountB {
          background-position: right -140px;
          width: 43px;
          height: 18px;
          padding-bottom: 4px;
          position: absolute;
          top: -15px;
          right: -30px;
          _right: 10px;
          font-size: 12px;
          line-height: 18px;
          color: #fff;
          text-align: center;
      }
      .main-text .originalPrice {
          color: #999;
          font-size: 12px;
          line-height: 18px;
          margin-bottom: 5px;
          height: 24px;
          text-align: center;
      }
      .Clear {
          clear: both;
      }
      .originalPrice .num {
          font-weight: bold;
          font-size: 12px;
          color: #999;
          line-height: 18px;
          text-decoration: line-through;
      }
      .main-text .b-rbtn.small {
          margin-left: 0;
      }
      .main-text .b-rbtn.small {
          margin-left: 0;
      }
      .main-Box .main-text .b-rbtn, .main-Box .main-text .b-btn, .main-Box .main-text {
          margin-bottom: 18px;
          margin-left: 20px;
      }
      .b-rbtn {
          background-position: 0 0\9;
          border: none\9;
          box-shadow: none\9;
      }

      .b-btn, .b-rbtn, .b-lbtn, .b-nbtn {
          width: 142px;
          height: 42px;
          line-height: 42px;
          height: 44px\9;
          line-height: 44px\9;
          padding-left: 4px;
          cursor: pointer;
          text-decoration: none;
          float: left;
          zoom: 1;
          -webkit-box-shadow: 0 1px #ddd;
          -moz-box-shadow: 0 1px #ddd;
          box-shadow: 0 1px #ddd;

          background: url(<c:url value='/resources/images/sprites.png'/>) no-repeat -799px -389px;
          border-radius: 3px;
          font-size: 16px;
      }

      .b-rbtn span{
          font-size: 20px;
          line-height: 40px;
          width: 100px;
          padding: 0 25px 0 13px;
          color: #fff;
          font-weight: bold;
      }

      .main-text .b-rbtn.small span {
          padding: 0;
          width: 115px;
          font-size: 18px;
      }

      .main-text .cart-btn {
          margin-left: 8px;
      }
      .main-Box .main-text .b-rbtn, .main-Box .main-text .b-btn, .main-Box .main-text .b-nbtn {
          margin-bottom: 18px;
          margin-left: 20px;
      }
      .b-btn {
          background-position: 0 -132px\9;
          border: none\9;
          box-shadow: none\9;
      }
      .b-btn, .m-btn, .tg-btn {
          background-image: -moz-linear-gradient(top,#f8f8f8,#ebebeb);
          background-image: -webkit-gradient(linear,0 0,0 100%,from(#f8f8f8),to(#ebebeb));
          background-image: -webkit-linear-gradient(top,#f8f8f8,#ebebeb);
          background-image: -o-linear-gradient(top,#f8f8f8,#ebebeb);
          background-repeat: repeat-x;
          border: solid 1px #d8d8d8;
      }

      .main-text .tg-status {
          padding: 12px 0;
          border-top: 1px solid #f6f6f6;
          width: auto;
          height: 36px;
          margin: 0 15px;
          overflow: hidden;
      }
      .main-text .tg-status .count {
          font-size: 14px;
          color: #333;
          text-align: center;
      }
      .main-text .tg-status .num {
          font-weight: bold;
          color: #c00;
          margin: 0 5px;
      }

      .main-text .tg-status .note {
          text-align: center;
          color: #999;
      }
      .main-text .limit-time {
          font-size: 12px;
          background-color: #e7e7e7;
          text-align: center;
          color: #333;
          height: 28px;
          line-height: 28px;
      }
      .main-text .limit-time .time {
          color: #999;
      }
      .main-text .limit-time {
          font-size: 12px;
          text-align: center;
          color: #333;
          line-height: 28px;
      }


      .main-Box .side {
          float: left;
          padding-bottom: 1px;
          width: 450px;
          position: relative;
      }
      .side .slide {
          width: 450px;
          height: 280px;
          overflow: hidden;
          position: relative;
      }
      .main-Box .side .img-wrap {
          position: relative;
          overflow: hidden;
      }


      .share-wrap {
          white-space: nowrap;
      }
      .side .favorites-box {
          float: left;
          position: relative;
          z-index: 100;
      }
      .side .favorites-box .favorites-btn {
          margin-top: 9px;
      }
      .tg-lbtn {
          background-position: 0 -749px\9;
          border: none\9;
          box-shadow: none\9;
      }

      .side .favorites-box .favorites-btn-off {
          cursor: pointer;
          float: left;
          width: 60px;
          height: 24px;
          line-height: 23px;
          padding-left: 23px;
          color: #666;
          background: url(<c:url value='/resources/images/c.index.d35a25d032293708fa262766f4753815.png'/>) no-repeat -160px -230px;
      }
      .main-Box .side .favorites-box .favorites-btn {
          margin-top: 9px;
      }

      .Share {
          float: left;
          z-index: 24;
          position: relative;
          zoom: 1;
          zoom: 1;
      }
      .share-wrap .cont {
          zoom: 1;
          position: relative;
          display: inline;
          height: 34px;
          background: 0;
      }
      .share-wrap .cont, .share-wrap .cont-r {
          background-image: url(<c:url value='/resources/images/g.comm.5acdf0677bed9315f8eecb089f2248f1.png'/>);
          background-repeat: no-repeat;
          background-position: 0 0;
      }
      .share-wrap h4 {
          float: left;
          margin-top: 12px;
          font-weight: normal;
          color: #666;
          font-size: 12px;
      }
      .Share-min-list {
          float: left;
      }
      .share-wrap ul {
          height: 34px;
          background: #fff;
          padding-left: 16px;
      }
      .share-wrap li {
          float: left;
          margin-top: 12px;
          padding-right: 2px;
      }
      .Share li {
          height: 16px;
      }

  .Share .sinat {
      background-position: -190px -120px;
  }
  .Share .item {
      padding-left: 20px;
      line-height: 16px;
      vertical-align: baseline;
      padding-top: 2px\9;
      _padding-top: 1px;
      line-height: 1.231\9;
      background-image: url(<c:url value='/resources/images/g.comm.5acdf0677bed9315f8eecb089f2248f1.png'/>);
      background-repeat: no-repeat;
  }
  .Share .msn {
      padding-top: 0;
      background-position: -190px -40px;
  }
  .Share .qqzone {
      background-position: -190px -160px;
  }

      .feature-list .icon-day {
          background-position: right -180px;
      }
       .feature-list .icon {
          background-position: right -210px;
          width: 25px;
          height: 24px;
          margin-left: 34px;
          background-image: url(<c:url value='/resources/images/c.index.d35a25d032293708fa262766f4753815.png'/>);
          background-repeat: no-repeat;
      }
      .cart-btn em {
          display: block;
          height: 100%;
          width: 21px;
          background-image: url(<c:url value='/resources/images/g.com.5cc9b73955cfb21cea74f0c165929ebf.png'/>);
          background-repeat: no-repeat;
          background-position: -89px -268px;
      }
      .main-Box .main-text .b-rbtn span, .main-Box .main-text .b-btn span, .main-Box .main-text .b-nbtn span {
          font-size: 20px;
          line-height: 40px;
          width: 100px;
      }
      .main-Box .main-text .b-rbtn span, .main-Box .main-text .b-btn span, .main-Box .main-text .b-nbtn span {
          font-size: 20px;
          line-height: 40px;
          width: 100px;
      }

  </style>



<div class="box-cont" >
    <div class="deal-title"><h1>三峡大坝</h1>
        <p class="deal-des">三峡大坝旅游区是国家AAAAA级旅游景区，也是长江三峡沿岸年接待游客最多的景区</p>
    </div>

    <div class="main main-text">
        <div class="buy">
            <div class="Price-font Price-font-s">
		<span class="price-rel">¥85
				<div class="discountB">8.5折</div>
		</span>
            </div>
            <div class="originalPrice Clear">
                <strong>价值</strong>
                <span class="num">¥100</span>
            </div>
            <div class="Fix" style="width: 142px;height: 42px;margin-bottom: 18px;">
                <a class="b-rbtn J_buy_now" style="width: 142px;height: 42px;margin-bottom: 18px;margin-left: 20px;"  rel="nofollow" track="dp_tg_deal_uplottery_detail_318366_杭州|1|module#5_button_buy,type#upbuy,action#click,dealgrp_id#318366" href="/pay/">
                    <span>立即抢购</span>
                </a>

            </div>
            <div class="feature-list Fix" style="width: 192px;text-align: center">
                <div class="feature-day feature-day-n" style="float:left;width: 92px">
                    <a href="/promise" track="dp_tg_deal_refund">
                        <div class="icon icon-day"></div>
                        <p>支持随时退</p>
                    </a>
                </div>
                <div class="feature-exp feature-exp-n" style="float:left;width: 92px">
                    <a href="/promise" track="dp_tg_deal_refund">
                        <div class="icon  icon-exp"></div>
                        <p>支持过期退</p>
                    </a>
                </div>
            </div>
        </div>
        <div class="tg-status">
            <p class="count"><span class="num J_dealCount">14361</span>人已购买</p>
            <p class="note">团购数量有限，下单要快哟</p>

        </div>
        <div class="limit-time"><span class="time">剩余时间 </span> 3天以上</div>
    </div>

    <div class="side">
        <div class="slide"><div class="img-wrap">
            <img src="<c:url value='/resources/images/4596478218.jpg'/>" alt="外婆家团购" width="450" height="280">
        </div></div>
        <div class="share-wrap" style="width: 450px">


            <div class="Share">
                <div class="cont Right">
                    <h4>分享到：</h4>
                    <ul class="Share-min-list">
                        <li><a class="item sinat" rel="nofollow" track="dp_tuangou_share_sina" title="分享到新浪微博" href="http://v.t.sina.com.cn/share/share.php?appkey=1392673069&amp;url=http%3A%2F%2Ft.dianping.com%2Fi%2F19655618%2Fd%2F291559%2Fc%2F5&amp;title=%E5%A4%96%E5%A9%86%E5%AE%B6!%E5%BA%86%E5%A4%96%E5%A9%86%E5%AE%B6%E5%8C%97%E4%BA%AC%E4%BA%94%E5%BD%A9%E5%9F%8E%E5%BA%97%E7%9B%9B%E5%A4%A7%E5%BC%80%E4%B8%9A!%E4%BB%85%E5%94%AE85%E5%85%83%2C%E4%BB%B7%E5%80%BC100%E5%85%83%E7%8E%B0%E9%87%91%E5%88%B81%E5%BC%A0!7%E5%9F%8E11%E5%BA%97%E5%8F%AF%E9%80%89!%E5%A4%96%E5%A9%86%E7%9A%84%E8%8F%9C%2C%E5%84%BF%E6%97%B6%E8%AE%B0%E5%BF%86%E7%9A%84%E5%91%B3%E9%81%93!%E5%A4%96%E5%A9%86%E5%96%8A%E4%BD%A0%E5%90%83%E9%A5%AD%E5%95%A6!&amp;source=&amp;content=utf-8&amp;pic=http%3A%2F%2Ft2.dpfile.com%2Ftuan%2F20130816%2F318216_130211333750000000.jpg&amp;ralateUid=1806073735" target="_blank"></a></li>
                        <li><a class="item msn" rel="nofollow" track="dp_tuangou_share_msn/qq" title="分享给MSN/QQ上的好友" href="javascript:void(0)" data-surl="http://t.dianping.com/i/19655618/d/291559/c/1"></a></li>
                        <li><a class="item qqzone" rel="nofollow" track="dp_tuangou_share_qqzone" title="分享到QQ空间" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=%E5%A4%96%E5%A9%86%E5%AE%B6!%E5%BA%86%E5%A4%96%E5%A9%86%E5%AE%B6%E5%8C%97%E4%BA%AC%E4%BA%94%E5%BD%A9%E5%9F%8E%E5%BA%97%E7%9B%9B%E5%A4%A7%E5%BC%80%E4%B8%9A!%E4%BB%85%E5%94%AE85%E5%85%83%2C%E4%BB%B7%E5%80%BC100%E5%85%83%E7%8E%B0%E9%87%91%E5%88%B81%E5%BC%A0!7%E5%9F%8E11%E5%BA%97%E5%8F%AF%E9%80%89!%E5%A4%96%E5%A9%86%E7%9A%84%E8%8F%9C%2C%E5%84%BF%E6%97%B6%E8%AE%B0%E5%BF%86%E7%9A%84%E5%91%B3%E9%81%93!%E5%A4%96%E5%A9%86%E5%96%8A%E4%BD%A0%E5%90%83%E9%A5%AD%E5%95%A6!&amp;url=http%3A%2F%2Ft.dianping.com%2Fi%2F19655618%2Fd%2F291559%2Fc%2F7&amp;pics=http%3A%2F%2Ft2.dpfile.com%2Ftuan%2F20130816%2F318216_130211333750000000.jpg" target="_blank"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>