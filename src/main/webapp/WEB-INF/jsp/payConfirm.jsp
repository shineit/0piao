<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .gray-box {
        position: relative;
        border: 1px solid #e0e0e0;
        background-color: rgba(119, 119, 119, 1.0);
        top:159px;
    }
    .gray-box, .gray-box .cont, .infor-box, .method, .pay-suc .view {
        zoom: 1;
    }
    .content {
        z-index: 20;
        float: left;
        width: 810px;
    }
    .gray-box .cont {
        padding: 20px;
    }
    .infor-box {

        border: 1px solid #cfcfcf;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 1px 2px 0 #e9e9e9;
    }
    .order-process .pay-method h3.title {
        font-size: 14px;
        font-weight: bold;
        border-bottom: 2px solid #cfcfcf;
        padding-bottom: 8px;
        margin-bottom: 10px;
    }
    .order-process .money-infor {
        padding: 10px 0 20px;
    }
     .num {
         color: #0089D1;
        font-family: "Microsoft YaHei",arial,sans-serif;
    }
    .pay-method .bank-list .icon-box {
        background-color: #EEEEEE;
        border: 1px solid #DDDDDD;
        display: inline-block;
        position: relative;
        vertical-align: middle;
        width: 120px;
        padding: 0;
        height: 30px;
    }

    .bank-list .icon-box .icon {
        background-repeat: no-repeat;
        display: block;
        float: none;
        height: 30px;
    }
    .bank-list .icon-box .icon {
        background-image: url(http://si1.s1.dpfile.com/t/cssnew/img/c.order.bank.10ecdc73a98045f36a5693862ee84b00.png);
    }
    .alipay {
        background-position: 0 -850px;
        text-indent: -9999px;
    }

    .infor-box .separated, .pay-method .separated {
        border-bottom: 1px dotted #ccc;
        margin-bottom: 10px;
        padding-bottom: 10px;
    }
    a {
        font-size: 12px;
        color: #08c;
    }


    .pay_confirm a {
        width: 142px;
        height: 42px;
        font-size: 30px;
        color: #fff;
        background: url('/resources/images/sprites.png') no-repeat -799px -389px;
        display: block;
        float: right;
    }
    .pay_confirm a .title {

        line-height: 40px;
        width: 100px;
        padding: 0 25px 0 13px;
        color: #fff;
        font-weight: bold;
    }
</style>
<div class="gray-box content order-process">
        <div class="cont">
            <div class="infor-box pay-method">
                <div class="pay-method">
                    <div class="voucher-box Fix separated">
                    <h3 class="title">选择支付方式</h3>
                    <p class="money-infor">
                        <strong>
                            您需要支付：
                            <span class="num" id="J_balance-note">¥100</span>
                        </strong>
                    </p>
                    </div>
                     <div class="voucher-box Fix separated pay-method">
                    <ul class="bank-list Fix J_bank_list ">
                        <li class="">
                            <input type="radio" value="ALIPAY-1" name="paytype" id="check-alipay" checked="">
                            <label for="check-alipay" class="icon-box"><span class="icon alipay" title="alipay"></span></label>
                        </li>
                    </ul>
                     </div>
                    <div class="voucher-box Fix separated">
                    <strong>团购成功后，团购券序列号将发送到&nbsp;<span class="num" id="binded_num">186****2748 </span></strong> <a href="javascript:" id="J_edit-phone">[修改]</a>
                    </div>
                    <div class="field" ><a href="/detail/">返回重新下单</a></div>
                    <div class="pay_confirm"><a href="#"><span class="title">支付</span></a></div>
                <div style="margin-top: 40px"></div>
                </div>
            </div>

        </div>
        <form action="${action}" method="get" id="payConfirmForm">
            <c:forEach items="${sParaTemp}" var="mymap" >
                <input type='hidden' name='<c:out value="${mymap.key}" />' value='<c:out value="${mymap.value}" />'>
            </c:forEach>
        </form>
</div>
<script>
    //SM6.Share.init('moonfruit');
    $(".pay_confirm").click(function(){
        $('#payConfirmForm').submit();
    });
</script>