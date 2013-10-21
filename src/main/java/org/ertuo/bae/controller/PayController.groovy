package org.ertuo.bae.controller

import org.ertuo.bae.pay.alipay.util.AlipaySubmit
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.core.env.Environment
import org.springframework.stereotype.Controller
import org.springframework.ui.ModelMap
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-8-14
 * Time: 上午9:05
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/pay")
class PayController {

    @Autowired
    private AlipaySubmit alipaySubmit;

    @Autowired
    private Environment env;

    @RequestMapping("/")
    String yusuan(ModelMap modelMap,String subject,String total_fee) {
        //String notify_url = "http://www.xxx.com/create_direct_pay_by_user-JAVA-UTF-8/notify_url.jsp";
        //需http://格式的完整路径，不能加?id=123这类自定义参数

        //页面跳转同步通知页面路径
        //String return_url = "http://www.xxx.com/create_direct_pay_by_user-JAVA-UTF-8/return_url.jsp";
        //需http://格式的完整路径，不能加?id=123这类自定义参数，不能写成http://localhost/

        //卖家支付宝帐户
        //String seller_email = new String(request.getParameter("WIDseller_email").getBytes("ISO-8859-1"),"UTF-8");
        //必填

        //商户订单号
        String out_trade_no = new Date().getTime().toString();



        //订单描述

        String body = "测试描述";
        //商品展示地址
        String show_url = "http://1.linpiao.duapp.com/detail";
        //需以http://开头的完整路径，例如：http://www.xxx.com/myorder.html

        //防钓鱼时间戳
        //String anti_phishing_key = "";
        //若要使用请调用类文件submit中的query_timestamp函数

        //客户端的IP地址
        String exter_invoke_ip = "221.0.0.1";
        //非局域网的外网IP地址，如：221.0.0.1


        //////////////////////////////////////////////////////////////////////////////////

        //把请求参数打包成数组
        Map<String, String> sParaTemp = new HashMap<String, String>();
        sParaTemp.put("service", env.getProperty("pay_service"));
        sParaTemp.put("partner", env.getProperty("partner"));
        sParaTemp.put("_input_charset", env.getProperty("input_charset"));
        sParaTemp.put("payment_type", "1");
        sParaTemp.put("notify_url", env.getProperty("pay_notify_url"));
        sParaTemp.put("return_url", env.getProperty("pay_return_url"));
        sParaTemp.put("seller_email", env.getProperty("seller_email"));
        sParaTemp.put("out_trade_no", out_trade_no);
        sParaTemp.put("subject", subject);
        sParaTemp.put("total_fee", total_fee);
        sParaTemp.put("body", body);
        sParaTemp.put("show_url", show_url);
        //sParaTemp.put("anti_phishing_key", anti_phishing_key);
        sParaTemp.put("exter_invoke_ip", exter_invoke_ip);


        //签名
         sParaTemp= alipaySubmit.buildRequestPara(sParaTemp);
         modelMap.addObject("sParaTemp",sParaTemp);
         modelMap.addObject("action", env.getProperty("alipay_gateway") + "_input_charset=" + env.getProperty("input_charset"));
        "payConfirm"
    }
}
