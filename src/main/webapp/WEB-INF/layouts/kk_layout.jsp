<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html style="height: 100%;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
    领票网
</title>
<meta content="website" property="og:type">
<meta content="nbaertuo" property="og:title">
<meta content="http://nbaertuo.moonfruit.com" property="og:url">
<meta content="http://nbaertuo.moonfruit.com/communities/2/004/012/049/702/previews/wbgoo6TZFbHE4amz7lH-3Q.jpg" property="og:image">

<script src="<c:url value='/resources/js/jquery-1.7.2.min.js'/>"></script>
<script src="<c:url value='/resources/js/jquery-1.7.2.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/default.css'/>" />
<style>


    .body {
        color: rgba(161, 161, 161, 1.0);
        font-family: Arial, 'Helvetica Neue', Helvetica, 'Liberation Sans', sans-serif;
        font-size: 14px;
        font: 12px/20px "Microsoft Yahei",Tahoma,Arial,Helvetica,STHeiti;
    }
</style>
<style>

    .master_fc7CjWDn69nAA1vSsxsm2.menu {
        left: 300px;
        top: 5px;
    }
    .master_fc7CjWDn69nAA1vSsxsm2.menu > .menuItem {
        padding: 0 0 10px 0;
    }
    .master_fc7CjWDn69nAA1vSsxsm2.horizontal > .menuItem {
        padding: 0 10px 0 0;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .menuItem > .menuItemDesign {
        background-color: rgba(241, 241, 241, 0.0);
        border-radius: 0px 0px 0px 0px;   -o-border-radius: 0px 0px 0px 0px;   -webkit-border-radius: 0px 0px 0px 0px;   -moz-border-radius: 0px 0px 0px 0px;   -ms-border-radius: 0px 0px 0px 0px;
        color: rgba(102, 102, 102, 0.7);
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 19.0px;
        padding: 50px 10px 10px 10px;
        text-align: right;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .selected.menuItem > .menuItemDesign {
        background-color: rgba(87, 83, 83, 0.15);
        border-radius: 0px 0px 0px 0px;   -o-border-radius: 0px 0px 0px 0px;   -webkit-border-radius: 0px 0px 0px 0px;   -moz-border-radius: 0px 0px 0px 0px;   -ms-border-radius: 0px 0px 0px 0px;
        color: rgba(87, 83, 83, 1.0);
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 19.0px;
        padding: 50px 10px 10px 10px;
        text-align: right;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .selected.menuItem:hover > .menuItemDesign {
        background-color: rgba(87, 83, 83, 0.08);
        border-radius: 0px 0px 0px 0px;   -o-border-radius: 0px 0px 0px 0px;   -webkit-border-radius: 0px 0px 0px 0px;   -moz-border-radius: 0px 0px 0px 0px;   -ms-border-radius: 0px 0px 0px 0px;
        color: rgba(87, 83, 83, 1.0);
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 19.0px;
        padding: 50px 10px 10px 10px;
        text-align: right;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu {
        padding: 0 0 0 5px;
    }
    .master_fc7CjWDn69nAA1vSsxsm2.horizontal .subMenu {
        padding-top: 5px;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .menuItem:hover > .menuItemDesign {
        background-color: rgba(87, 83, 83, 0.08);
        border-radius: 0px 0px 0px 0px;   -o-border-radius: 0px 0px 0px 0px;   -webkit-border-radius: 0px 0px 0px 0px;   -moz-border-radius: 0px 0px 0px 0px;   -ms-border-radius: 0px 0px 0px 0px;
        color: rgba(87, 83, 83, 1.0);
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 19.0px;
        padding: 50px 10px 10px 10px;
        text-align: right;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu ul {
        border-radius: 0px 0px 0px 0px;   -o-border-radius: 0px 0px 0px 0px;   -webkit-border-radius: 0px 0px 0px 0px;   -moz-border-radius: 0px 0px 0px 0px;   -ms-border-radius: 0px 0px 0px 0px;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .menuItem {
        background-color: rgba(255, 255, 255, 1.0);
        color: rgba(87, 83, 83, 0.8);
        font-family: Arial;
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 16.0px;
        padding: 7px 7px 7px 7px;
        text-align: center;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .selected.menuItem {
        background-color: rgba(87, 83, 83, 0.1);
        color: rgba(87, 83, 83, 1.0);
        font-family: Arial;
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 16.0px;
        padding: 7px 7px 7px 7px;
        text-align: center;
        text-decoration: none;
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .menuItem:hover {
        background-color: rgba(87, 83, 83, 0.1);
        color: rgba(85, 85, 85, 1.0);
        font-family: Arial;
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 16.0px;
        padding: 7px 7px 7px 7px;
        text-align: center;
        text-decoration: none;
    }
    #free-footer-bar {
        float: left;
        height: 40px;
        padding-top: 6px;
        position: relative;
        top: 6px;
        width: 960px;
    }

    .logged_in {
        height: 42px;
        margin-top: 13px;
        margin-left: 82px;
        float: right;
        margin: 13px 16px 0 82px;
        position: relative;
        top: 4px;
    }
    .logged_in .avatar {
        margin-left: -50px;
        width: 42px;
        height: 42px;
        background-color: #e7e7e7;
        float: left;
    }
    .logged_in .username {
        font-size: 13px;
        color: #7d7a84;
    }
    .logged_in a {
        color: #777e89;
    }
    .logged_in .logout_button .button_title {
        margin-top: -2px;
        font-size: 21px;
        color: #777e89;
        float: left;
    }
    .button_title {
        line-height: 32px;
    }
    .medium_text {
        font-family: "Platform Web-Medium",Verdana,Arial,sans-serif;
        font-style: normal;
        font-weight: 400!important;
        font-stretch: normal;
    }
    .logged_in .logout_button .icon {
        position: absolute;
        width: 11px;
        height: 6px;
        margin: 8px 0 0 4px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -968px -143px;
        background-repeat: no-repeat;
        top: 13px;

    }

    .logged_in .menu_dropdown {
        position: absolute;
        margin: 22px 0 0 -63px;
        width: 154px;
        z-index: 7;
        line-height: 32px;
    }
    .hidden_at_start {
        display: none;
    }
    .logged_in .menu_dropdown .top {
        height: 55px;
        background-position: -492px -778px;
    }
    .logged_in .menu_dropdown .top .title {
        margin-top: 20px;
        font-size: 24px;
    }
    .logged_in .menu_dropdown li a {
        width: 154px;
        font-size: 24px;
        color: #fff;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-repeat: no-repeat;
        display: block;
    }

    .safe_area {
        width: 990px;
        margin-left: auto;
        margin-right: auto;
    }
    #header_items .login_button {
        width: 109px;
        height: 42px;
        margin-right: 30px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -226px 0;
    }
    #header_items .header_button {
        height: 42px;
        margin-top: 37px;
        background-repeat: no-repeat;
        float: right;
    }
    #header_items .login_button .button_title {
        margin-left: 43px;
        margin-top: 0;
        font-size: 21px;
        color: #fff;
        line-height: 42px;
    }
    #header_items .header_button .button_title {
        display: block;
    }
    #login_popup {
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        background: url('<c:url value="/resources/images/popup_veil.png" />') repeat;
        z-index: 111111;
    }
    #login_popup .box {
        position: absolute;
        top: 50px;
        margin-left: 165px;
        width: 462px;
        height: 523px;
    }
    #login_popup .box .background {
        position: absolute;
    }
    #login_popup .box .background .top {
        position: absolute;
        width: 462px;
        height: 29px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -276px;
        background-repeat: no-repeat;
    }
    #login_popup .box .background .middle {
        position: absolute;
        top: 29px;
        width: 462px;
        height: 390px;
        background-image: url('<c:url value="/resources/images/popup_background.png"/>');
        background-repeat: repeat-y;
    }
    #login_popup .box .background .bottom {
        position: absolute;
        top: 419px;
        width: 462px;
        height: 29px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -464px -276px;
        background-repeat: no-repeat;
    }
    #login_popup .box .area {
        position: absolute;
        top: 12px;
        left: 12px;
        width: 438px;
        height: 499px;
    }
    #login_popup .box .area .popup_title {
        margin-top: 14px;
        margin-left: 15px;
        font-size: 46px;
        color: #3a3f56;
    }
    .regular_text, .regular_text h3 {
        font-family: "Platform Web-Regular",Verdana,Arial,sans-serif;
        font-style: normal;
        font-weight: 400!important;
        font-stretch: normal;
    }
    #login_popup .box .area .input_field.username label {
        position: absolute;
        top: 90px;
    }
    #login_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #login_popup .box .area .input_field.username .input_background {
        position: absolute;
        top: 119px;
    }
    #login_popup .box .area .input_field .input_background {
        left: 18px;
        width: 306px;
        height: 42px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -307px;
        background-repeat: no-repeat;
        display: block;
    }
    #login_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 270px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #login_popup .box .area .input_field.password label {
        position: absolute;
        top: 176px;
    }
    #login_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #login_popup .box .area .input_field.password .input_background {
        position: absolute;
        top: 205px;
    }
    #login_popup .box .area .input_field .input_background {
        left: 18px;
        width: 306px;
        height: 42px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -307px;
        background-repeat: no-repeat;
        display: block;
    }
    #login_popup .box .area .message.username {
        top: 103px;
    }
    #login_popup .box .area .message {
        position: absolute;
        left: 327px;
        width: 236px;
        height: 76px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -351px;
        background-repeat: no-repeat;
    }
    #login_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 270px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #login_popup .box .area .message.password {
        top: 189px;
    }
    #login_popup .box .area .message {
        position: absolute;
        left: 327px;
        width: 236px;
        height: 76px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -351px;
        background-repeat: no-repeat;
    }
    #login_popup .box .area .message .legend {
        position: absolute;
        top: 12px;
        left: 26px;
        width: 198px;
        height: 52px;
        font-size: 13px;
        line-height: 16px;
        color: #777d88;
    }
    #login_popup .box .area .forgotten_password {
        position: absolute;
        top: 258px;
        left: 19px;
        font-size: 13px;
        line-height: 15px;
    }
    #login_popup .box .area .forgotten_password a {
        color: #777d88;
        text-decoration: underline;
    }
    #login_popup .box .area .remember_me {
        position: absolute;
        top: 290px;
        left: 19px;
        height: 18px;
    }
    #login_popup .box .area .remember_me a .check_on {
        width: 18px;
        height: 18px;
        margin-right: 5px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -876px -85px;
        background-repeat: no-repeat;
        float: left;
    }
    #login_popup .box .area .remember_me a .check_off {
        width: 18px;
        height: 18px;
        margin-right: 5px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -896px -85px;
        background-repeat: no-repeat;
        float: left;
    }
    #login_popup .box .area .remember_me a .legend {
        width: 130px;
        font-size: 13px;
        line-height: 18px;
        color: #777d88;
        display: block;
    }
    #login_popup .box .area .signup a .title, #login_popup .box .area .submit a .title {
        margin-left: 21px;
        line-height: 42px;
        letter-spacing: -1px;
        display: block;
    }
    #login_popup .box .area .signup a {
        background-position: -133px -672px;
        left: 170px;
        width: 166px;
    }
    #login_popup .box .area .signup a, #login_popup .box .area .submit a {
        position: absolute;
        top: 355px;
        left: 18px;
        width: 142px;
        height: 42px;
        font-size: 30px;
        color: #fff;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -799px -389px;
        display: block;
    }
    #login_popup .box .area .close_button a {
        position: absolute;
        top: -30px;
        left: 404px;
        width: 67px;
        height: 63px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -762px -199px;
        background-repeat: no-repeat;
        display: block;
    }
    .placeholder_text {
        display: none;
    }
    #login_popup .box .area .signup a {
        background-position: -133px -672px;
        left: 170px;
        width: 166px;
    }

    #sign_up_popup {
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        background: url('<c:url value="/resources/images/popup_veil.png"/>') repeat;
        z-index: 11111;
    }

    #sign_up_popup #tooltip {
        position: fixed;
        top: 0;
        left: 0;
        width: 275px;
        z-index: 8;
    }
    #sign_up_popup .box {
        position: absolute;
        top: 50px;
        margin-left: 165px;
        width: 462px;
        height: 523px;
    }
    #sign_up_popup .box .background {
        position: absolute;
    }
    #sign_up_popup .box .background .top {
        position: absolute;
        width: 462px;
        height: 29px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat 0 -276px;
    }
    #sign_up_popup .box .background .middle {
        position: absolute;
        top: 29px;
        width: 462px;
        height: 465px;
        background: url('<c:url value="/resources/images/popup_background.png"/>') repeat-y;
    }
    #sign_up_popup .box .background .bottom {
        position: absolute;
        top: 494px;
        width: 462px;
        height: 29px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -464px -276px;
    }
    #sign_up_popup .box .area {
        position: absolute;
        top: 12px;
        left: 12px;
        width: 438px;
        height: 499px;
    }
    #sign_up_popup .box .area .popup_title {
        margin-top: 18px;
        margin-left: 15px;
        font-size: 36px;
        color: #3a3f56;
    }
    #sign_up_popup .box .area .input_field.username label {
        position: absolute;
        top: 93px;
    }
    #sign_up_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #sign_up_popup .box .area .input_field.username .input_background {
        position: absolute;
        top: 119px;
    }
    #sign_up_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 250px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #sign_up_popup .box .area .input_field.email label {
        position: absolute;
        top: 179px;
    }
    #sign_up_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #sign_up_popup .box .area .input_field.email .input_background {
        position: absolute;
        top: 205px;
    }
    #sign_up_popup .box .area .input_field .input_background {
        left: 18px;
        width: 306px;
        height: 42px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat 0 -307px;
        display: block;
    }
    #sign_up_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 250px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #sign_up_popup .box .area .input_field.password label {
        position: absolute;
        top: 265px;
    }
    #sign_up_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #sign_up_popup .box .area .input_field.password .input_background {
        position: absolute;
        top: 291px;
    }
    #sign_up_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 250px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #sign_up_popup .input_field .password_strength_feedback {
        position: relative;
        top: -34px;
        left: 276px;
        font-size: 11px;
        line-height: 15px;
        color: #777d88;
        width: 18px;
        height: 22px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -640px -997px;
        display: none;
    }
    #sign_up_popup .box .area .tooltiptitle, #sign_up_popup .box .area .tooltiptext {
        display: none;
    }
    #sign_up_popup .box .area .tooltiptitle, #sign_up_popup .box .area .tooltiptext {
        display: none;
    }
    #sign_up_popup .box .area .message.username {
        top: 103px;
    }
    #sign_up_popup .box .area .message {
        position: absolute;
        left: 327px;
        width: 236px;
        height: 76px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat 0 -351px;
    }
    #sign_up_popup .box .area .message .legend {
        position: absolute;
        top: 12px;
        left: 26px;
        width: 198px;
        height: 52px;
        font-size: 13px;
        line-height: 16px;
        color: #777d88;
    }
    #sign_up_popup .box .area .message.email {
        top: 189px;
    }
    #sign_up_popup .box .area .message {
        position: absolute;
        left: 327px;
        width: 236px;
        height: 76px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat 0 -351px;
    }
    #sign_up_popup .box .area .message .legend {
        position: absolute;
        top: 12px;
        left: 26px;
        width: 198px;
        height: 52px;
        font-size: 13px;
        line-height: 16px;
        color: #777d88;
    }
    #sign_up_popup .box .area .message.password {
        top: 275px;
    }
    #sign_up_popup .box .area .message {
        position: absolute;
        left: 327px;
        width: 236px;
        height: 76px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat 0 -351px;
    }
    #sign_up_popup .box .area .message .legend {
        position: absolute;
        top: 12px;
        left: 26px;
        width: 198px;
        height: 52px;
        font-size: 13px;
        line-height: 16px;
        color: #777d88;
    }
    #sign_up_popup .box .area .small_print {
        position: absolute;
        top: 347px;
        left: 19px;
        width: 304px;
        font-size: 11px;
        line-height: 15px;
        color: #777d88;
    }
    #sign_up_popup .box .area .divider {
        position: absolute;
        top: 392px;
        left: 18px;
        width: 306px;
        height: 6px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -546px -307px;
        display: block;
    }
    #sign_up_popup .box .area .submit a {
        position: absolute;
        top: 430px;
        left: 18px;
        width: 236px;
        height: 42px;
        font-size: 30px;
        color: #fff;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -308px -307px;
        display: block;
    }
    #sign_up_popup .box .area .close_button a {
        position: absolute;
        top: -30px;
        left: 404px;
        width: 67px;
        height: 63px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -762px -199px;
        display: block;
    }
    #sign_up_popup .box .area .submit a .title {
        margin-left: 21px;
        letter-spacing: -1px;
        display: block;
    }
    .submit a .title {
        line-height: 42px;
    }


    #forgotten_popup, #emailsent_popup {
        position: fixed;
        top: 0;
        width: 100%;
        height: 100%;
        background-image: url('<c:url value="/resources/images/popup_veil.png"/>');
        background-repeat: repeat;
        z-index: 111111;
    }
    #forgotten_popup .box, #emailsent_popup .box {
        position: absolute;
        top: 50px;
        margin-left: 165px;
        width: 462px;
        height: 413px;
    }
    #forgotten_popup .box .background, #emailsent_popup .box .background {
        position: absolute;
    }
    #forgotten_popup .box .background .top, #emailsent_popup .box .background .top {
        position: absolute;
        width: 462px;
        height: 29px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -276px;
        background-repeat: no-repeat;
    }
    #forgotten_popup .box .background .middle, #emailsent_popup .box .background .middle {
        position: absolute;
        top: 29px;
        width: 462px;
        height: 280px;
        background-image: url('<c:url value="/resources/images/popup_background.png"/>');
        background-repeat: repeat-y;
    }
    #forgotten_popup .box .background .bottom, #emailsent_popup .box .background .bottom {
        position: absolute;
        top: 309px;
        width: 462px;
        height: 29px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -464px -276px;
        background-repeat: no-repeat;
    }
    #forgotten_popup .box .area, #emailsent_popup .box .area {
        position: absolute;
        top: 12px;
        left: 12px;
        width: 438px;
        height: 389px;
    }
    #forgotten_popup .box .area .popup_title, #emailsent_popup .box .area .popup_title {
        margin-top: 14px;
        margin-left: 15px;
        font-size: 46px;
        color: #3a3f56;
    }
    #forgotten_popup .box .area .input_field {
        margin-left: 15px;
    }
    #forgotten_popup .box .area .input_field.email label {
        margin-top: 20px;
    }
    #forgotten_popup .box .area .input_field label {
        left: 17px;
        font-size: 21px;
        color: #777d88;
        display: block;
    }
    #forgotten_popup .box .area .input_field.email .input_background {
        margin-top: 5px;
    }
    #forgotten_popup .box .area .input_field .input_background {
        left: 18px;
        width: 306px;
        height: 42px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -307px;
        background-repeat: no-repeat;
        display: block;
    }
    #forgotten_popup .box .area .input_field .input_background input {
        margin-left: 18px;
        margin-right: 18px;
        width: 270px;
        height: 42px;
        font-size: 24px;
        line-height: 42px;
        color: #777d88;
    }
    #forgotten_popup .box .area .input_field .instructions {
        width: 407px;
        display: inline-block;
        margin-top: 20px;
        font-size: 14px;
    }
    #forgotten_popup .box .area .message {
        position: absolute;
        left: 327px;
        top: 103px;
        width: 236px;
        height: 76px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: 0 -351px;
        background-repeat: no-repeat;
    }
    #forgotten_popup .box .area .message .legend {
        position: absolute;
        top: 12px;
        left: 26px;
        width: 198px;
        height: 52px;
        font-size: 13px;
        line-height: 16px;
        color: #777d88;
    }
    #forgotten_popup .box .area .divider {
        margin: 19px 0 19px 15px;
    }
    #forgotten_popup .box .area .divider, #emailsent_popup .box .area .divider {
        width: 306px;
        height: 6px;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -546px -307px;
        display: block;
    }
    #forgotten_popup .box .area .cancel a {
        float: left;
        margin-left: 15px;
    }
    #forgotten_popup .box .area .left_edge {
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -943px -365px;
    }
    #forgotten_popup .box .area .left_edge, #forgotten_popup .box .area .right_edge {
        width: 21px;
        height: 42px;
        float: left;
    }
    #forgotten_popup .box .area .middle {
        background-color: #00B095;
        float: left;
        font-size: 30px;
        color: #fff;
        display: block;
        letter-spacing: -1px;
        line-height: 42px;
    }
    #forgotten_popup .box .area .right_edge {
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -966px -365px;
    }
    #forgotten_popup .box .area .left_edge, #forgotten_popup .box .area .right_edge {
        width: 21px;
        height: 42px;
        float: left;
    }
    #forgotten_popup .box .area .submit a {
        width: 142px;
        height: 42px;
        font-size: 30px;
        color: #fff;
        background: url('<c:url value="/resources/images/sprites.png"/>') no-repeat -799px -389px;
        float: left;
        margin-left: 15px;
    }
    #forgotten_popup .box .area .submit a .title, #forgotten_popup .box .area .processing a .title, #emailsent_popup .box .area .close a .title {
        margin-left: 21px;
        line-height: 42px;
        letter-spacing: -1px;
        display: block;
    }
    #forgotten_popup .box .area .processing a {
        position: absolute;
        top: 245px;
        left: 170px;
        width: 181px;
        height: 42px;
        font-size: 30px;
        color: #fff;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -300px -672px;
        background-repeat: no-repeat;
        display: block;
    }
    #forgotten_popup .box .area .submit a .title, #forgotten_popup .box .area .processing a .title, #emailsent_popup .box .area .close a .title {
        margin-left: 21px;
        line-height: 42px;
        letter-spacing: -1px;
        display: block;
    }
    #forgotten_popup .box .area .close_button a, #emailsent_popup .box .area .close_button a {
        position: absolute;
        top: -30px;
        left: 404px;
        width: 67px;
        height: 63px;
        background-image: url('<c:url value="/resources/images/sprites.png"/>');
        background-position: -762px -199px;
        background-repeat: no-repeat;
        display: block;
    }
</style>
<!--[if lte IE 8]-->
<style>
    .master_fc7CjWDn69nAA1vSsxsm2 > .menuItem > .menuItemDesign {
        background-color: transparent;
        behavior: url(/_app/13/sm6/PIE-2.0beta.htc);
        color: rgb(102, 102, 102);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .selected.menuItem > .menuItemDesign {
        behavior: url(/_app/13/sm6/PIE-2.0beta.htc);
        color: rgb(87, 83, 83);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .selected.menuItem:hover > .menuItemDesign {
        behavior: url(/_app/13/sm6/PIE-2.0beta.htc);
        color: rgb(87, 83, 83);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 > .menuItem:hover > .menuItemDesign {
        behavior: url(/_app/13/sm6/PIE-2.0beta.htc);
        color: rgb(87, 83, 83);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu ul {
        behavior: url(/_app/13/sm6/PIE-2.0beta.htc);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .menuItem {
        background-color: rgb(255, 255, 255);
        color: rgb(87, 83, 83);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .selected.menuItem {
        background-color: rgb(87, 83, 83);
        color: rgb(87, 83, 83);
    }
    .master_fc7CjWDn69nAA1vSsxsm2 .subMenu .menuItem:hover {
        background-color: rgb(87, 83, 83);
        color: rgb(85, 85, 85);
    }
</style>
<style>
    #home {
        background-color: rgb(239, 239, 239);
    }
    #master_f7QBc2C_a2Z3wh05NVeAf {
        color: rgb(87, 83, 83);
    }

    #page_home_fAiyileTLdgBzqXh11CL4 {
        filter: alpha(opacity=30);
        zoom: 1;
    }
    #page_home_fWfNwIYMFmj7_9Iyqq9Dc {
        filter: alpha(opacity=30);
        zoom: 1;
    }
    #page_home_fcVeJU1f3-aG80UXkHu-Y {
        filter: alpha(opacity=30);
        zoom: 1;
    }





</style>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery.fancybox.css'/> "/>

<link rel="stylesheet" href="<c:url value='/resources/css/jquery.fancybox-patch.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/sm.custom.css'/>">
<link rel="stylesheet" href='<c:url value="/resources/css/reset.css"/>'>
<script src="<c:url value='/resources/js/screenshot.js'/>"></script>
<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script>
    var tref = { tok : '40lWBTNLLgLe0Bpiv6szQyYQ' };
</script>
<script src="<c:url value='/resources/js/Login.js'/>"></script>
<script src="<c:url value='/resources/js/SM6Preview.js'/>"></script>
</head>
<body id="home" style="background-color: rgba(239, 239, 239, 1.0); background-position: center top; background-repeat: repeat; height: 100%;">

<div id="free_buttons_section" style="display: block;">
    <div id="free_logo_section">
        <a href="http://www.moonfruit.com/"><span class="free_button logo"></span></a>
    </div>
    <div id="free_share_section">
        <a href="http://1.linpiao.duapp.com/home/4578449386?preview=Y#" id="free_share_button"><span class="free_button share"></span></a>
        <div id="free_share_menu">
            <span class="arrow"></span>
            <ul>
                <li id="facebook_like_widget"></li>
                <li id="twitter_button_widget"></li>
                <li id="google_plusone_widget"></li>
            </ul>
        </div>
    </div>
</div>
<!--[if IE 7]>
<div class="free-blocks-ie7-fix"></div>
<![endif]-->

<div id="pagePadding" style="clear: both; min-width: 960px; padding-bottom: 30px; width: auto;">
    <div id="pageAlignment" style="margin: 0px auto; min-height: 1312px; position: relative; width: 960px; z-index: 0;">
        <div id="content" style="float: left; min-height: 1260px; overflow: hidden; position: relative; width: 960px;">

            <ul class="menu horizontal master_fc7CjWDn69nAA1vSsxsm2">
                <li class="menuItem selected">
                    <a href="/" class="body menuItemDesign"><span>本周主打</span></a>
                </li>
                <li class="menuItem ">
                    <a href="http://1.linpiao.duapp.com/about/4578449387?preview=Y" class="body menuItemDesign"><span>欢乐谷景区</span></a>
                </li>
                <li class="menuItem ">
                    <a href="http://1.linpiao.duapp.com/shop/4578449388?preview=Y" class="body menuItemDesign"><span>三峡景区</span></a>
                </li>
                <li class="menuItem ">
                    <a href="/area/" class="body menuItemDesign"><span>地方景点</span></a>
                </li>
            </ul>

            <div id="master_f7QBc2C_a2Z3wh05NVeAf" class="title" style="color: rgba(87, 83, 83, 1.0); font-family: Allura; font-size: 72px; font-weight: 400; left: 0px; line-height: 90.0px; margin: 0; min-height: 91px; padding-bottom: 2px; padding-left: 2px; padding-right: 2px; padding-top: 2px; position: absolute; text-align: left; top: 17px; width: 315px; word-wrap: break-word; z-index: 12;">
                <h1 id="master_f7QBc2C_a2Z3wh05NVeAf_P1" style="line-height: 90.0px;"><span id="master_f7QBc2C_a2Z3wh05NVeAf_P1_C0">领票网</span></h1>
            </div>



            <img id="master_f7wITs7fKy0cyIenqWKcY" src="<c:url value='/resources/images/raab3laoUVjPB1ryxN8AL9HiCyI.png'/>" class="svgPNG" style="height: 1px; left: 0px; position: absolute; top: 112px; width: 958px; z-index: 20;">
            <img id="master_fJ5F7_pnpOQwgOomA-2dJ" src="<c:url value='/resources/images/COZ8Tfo5mqSvQfbCr354VQuqfNE.png'/>" class="svgPNG" style="height: 1px; left: 0px; position: absolute; top: 116px; width: 958px; z-index: 22;">


            <!-- 登陆-->
            <div id="header_items" class="safe_area">

                <p class="logged_out"><a class="header_button login_button" href="#"><span class="button_title medium_text">登陆</span></a></p>

                <!-- 退出 -->
                <div class="logged_in hidden_at_start" style="display: none;">
                    <p class="avatar"><img src="<c:url value='/resources/images/avatar1.png'/>" alt="nbaertuo"></p>
                    <p class="username">nbaertuo</p>
                    <p>
                        <a class="logout_button" href="#"><span class="button_title medium_text">退出</span></a>
                    </p>

                </div>

            </div>

            <!-- 登陆pop页面-->
            <div id="login_popup" class="hidden_at_start" style="display: none;">
                <div class="safe_area">
                    <div class="box">
                        <div class="background"><span class="top"></span><span class="middle"></span><span class="bottom"></span></div>
                        <div class="area">
                            <p class="popup_title regular_text">登陆</p>
                            <p class="input_field username"><label class="medium_text">用户名</label><span class="input_background"><input type="text" maxlength="32" tabindex="1"></span></p>
                            <p class="input_field password"><label class="medium_text">密码</label><span class="input_background"><input type="password" maxlength="100" tabindex="2"></span></p>
                            <p class="message username hidden_at_start"><span class="legend">message</span></p>
                            <p class="message password hidden_at_start"><span class="legend">message</span></p>
                            <p class="forgotten_password"><a id="forgotten_pass" href="#">忘记密码?</a></p>
                            <p class="remember_me"><a href="#"><span class="check_on hidden_at_start"></span><span class="check_off"></span><span class="legend">记住我</span></a></p>
                            <span class="divider"></span>
                            <p class="submit login regular_text"><a href="#"><span class="title">登陆</span></a></p>
                            <p class="signup regular_text"><a id="open_register" href="#"><span class="title">注册</span></a></p>
                            <p class="close_button"><a id="close_login" href="#"><span class="placeholder_text">关闭</span></a></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 注册 -->
            <div id="sign_up_popup" class="hidden_at_start" style="display: none;">

                <div id="tooltip" class="hidden_at_start">
                    <div class="top"></div>
                    <div class="middle">
                        <h1></h1>
                        <p></p>
                    </div>
                    <div class="bottom"></div>
                </div>

                <div class="safe_area">
                    <div class="box">
                        <div class="background"><span class="top"></span><span class="middle"></span><span class="bottom"></span></div>
                        <div class="area">
                            <p class="popup_title regular_text">从这里开始你的旅途...</p>
                            <p class="input_field username"><label class="medium_text">用户名</label><span class="input_background"><input type="text" maxlength="32" tabindex="1"></span></p>
                            <p class="input_field email"><label class="medium_text">常用邮箱</label><span class="input_background"><input type="text" tabindex="2"></span></p>
                            <p class="input_field password">
                                <label class="medium_text">密码</label>
                    <span class="input_background">
                        <input id="password" type="password" maxlength="100" tabindex="3">
                    <span class="password_strength_feedback">
                        <span class="tooltiptitle">确认密码</span>
                        <span class="tooltiptext">To create a strong password use a mixture of upper and lowercase characters, numbers and non alphanumeric characters and make it at least 7 characters long.</span>
                    </span>
                    </span>
                            </p>
                            <p class="message username hidden_at_start" style="display: block;"><span class="legend">输入有效用户名.</span></p>
                            <p class="message email hidden_at_start"><span class="legend">message</span></p>
                            <p class="message password hidden_at_start"><span class="legend">message</span></p>
                            <p class="small_print"> <a href="/terms">用户协议</a></p>
                            <span class="divider"></span>
                            <p class="submit regular_text"><a  href="#"><span class="build_title title">注册</span></a></p>
                            <p class="close_button"><a id="close_register" href="#"><span class="placeholder_text">关闭</span></a></p>
                        </div>
                    </div>
                </div>
                <form id="sign_up_pay_form" method="post"></form>
            </div>
            <!-- 重置密码 -->
            <div id="forgotten_popup" class="hidden_at_start" style="display: none;">
                <div class="safe_area">
                    <div class="box">
                        <div class="background"><span class="top"></span><span class="middle"></span><span class="bottom"></span></div>
                        <div class="area">
                            <p class="popup_title regular_text">忘记密码</p>
                            <p class="input_field email"><label class="medium_text">输入你的邮箱</label><span class="input_background"><input type="text" tabindex="1"></span><span class="instructions">输入你注册时的邮箱，我们将发送一封重置密码的邮件到该邮箱。.</span></p>
                            <p class="sent_to_email hidden_at_start"><span class="medium_text"></span></p>
                            <p class="message email hidden_at_start"><span class="legend">message</span></p><span class="divider"></span>
                            <p class="cancel regular_text"><a id="cancle_forgotten" href="#"><span class="left_edge"></span><span class="middle title">取消</span><span class="right_edge"></span></a></p>
                            <p class="submit regular_text"><a href="#"><span class="title">提交</span></a></p>
                            <p class="processing regular_text hidden_at_start"><a href="#"><span class="title">Processing...</span></a></p>
                            <p class="close_button"><a id="close_forgotten" href="#"><span class="placeholder_text">关闭</span></a></p>
                        </div>
                    </div>
                </div>
            </div>





            <sitemesh:write property='body'/>















            <a href="http://plus.google.com/nbaertuo" target="_blank"><img id="page_home_fAiyileTLdgBzqXh11CL4" src="<c:url value='/resources/images/4596478212.png'/>" alt="gplus-icon" style="height: 30px; left: 463px; opacity: 0.3; -o-opacity: 0.3; -webkit-opacity: 0.3; -moz-opacity: 0.3; -ms-opacity: 0.3; position: absolute; top: 1214px; width: 32px; z-index: 92;"></a>
            <a href="http://www.facebook.com/nbaertuo" target="_blank"><img id="page_home_fWfNwIYMFmj7_9Iyqq9Dc" src="<c:url value='/resources/images/4596478211.png'/>" alt="fb-icon" style="height: 30px; left: 435px; opacity: 0.3; -o-opacity: 0.3; -webkit-opacity: 0.3; -moz-opacity: 0.3; -ms-opacity: 0.3; position: absolute; top: 1214px; width: 26px; z-index: 93;"></a>
            <a href="http://www.twitter.com/nbaertuo" target="_blank"><img id="page_home_fcVeJU1f3-aG80UXkHu-Y" src="<c:url value='/resources/images/4596478214.png'/>" alt="twitter-icon" style="height: 30px; left: 496px; opacity: 0.3; -o-opacity: 0.3; -webkit-opacity: 0.3; -moz-opacity: 0.3; -ms-opacity: 0.3; position: absolute; top: 1214px; width: 33px; z-index: 94;"></a>






            <img id="page_home_f6Mox10kDrxbRdXM1eBqM" src="<c:url value='/resources/images/l7R_pVJh00AoFwx1cadLdEBF6Zg.png'/>" class="svgPNG" style="height: 1px; left: 436px; position: absolute; top: 1196px; width: 92px; z-index: 101;">




        </div>

        <div id="free-footer-bar">
            <ul>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">关于我们</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">公司简介</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">联系我们</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">市场合作</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">常见问题</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">客户端下载</a></li>
                <li class="abuse"><a href="http://www.0piao.com/cgi-bin/support.cgi?todo=siteleader_form;preview=Y">意见反馈</a></li>
            </ul>
        </div>

    </div>
</div>
<script src="<c:url value='/resources/js/social_plugins.js'/>"></script>
<script>
    //SM6.Share.init('moonfruit');
    $(".logout_button").click(function(){
        //alert( typeof($('.menu_dropdown.hidden_at_start')))
       if($('.menu_dropdown.hidden_at_start').attr("class") == 'menu_dropdown hidden_at_start')
       {
           $('.menu_dropdown.hidden_at_start').attr("class","menu_dropdown");
       }else{
           $('.menu_dropdown').attr("class","menu_dropdown hidden_at_start")
       }
    });
    $(".header_button.login_button").click(function(){
         $("#login_popup").attr("style","display:block");
     });
    $("#close_login").click(function(){
         $("#login_popup").attr("style","display:none");
     });
    $("#open_register").click(function(){
         $("#login_popup").attr("style","display:none");
         $("#sign_up_popup").attr("style","display:block");
     });
    $("#close_register").click(function(){
         $("#sign_up_popup").attr("style","display:none");
     });
    $("#close_forgotten").click(function(){
         $("#forgotten_popup").attr("style","display:none");
     });
    $("#cancle_forgotten").click(function(){
         $("#forgotten_popup").attr("style","display:none");
     });
    $("#forgotten_pass").click(function(){
         $("#login_popup").attr("style","display:none");
         $("#forgotten_popup").attr("style","display:block");
     });

</script>
<script src="<c:url value='/resources/js/jquery.fancybox.pack.js'/>"></script>
<script src="<c:url value='/resources/js/jquery.fancybox-init.js'/>"></script>


<div class="login" style="display:none;"><a href="http://1.linpiao.duapp.com/home/4578449386?preview=Y#" class="loginpopup"></a></div>
<div class="login" style="display:none;"><a href="#" class="loginpopup"></a></div>

<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-5123395-7']);
    _gaq.push(['_trackPageview']);
    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
</script>
</body></html>



