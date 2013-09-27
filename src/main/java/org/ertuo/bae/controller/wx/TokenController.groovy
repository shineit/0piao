package org.ertuo.bae.controller.wx

import org.ertuo.bae.domain.Message
import org.ertuo.bae.domain.MsgType
import org.ertuo.bae.service.NotifyService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import java.util.logging.Logger;
import java.util.logging.Level;
import javax.servlet.ServletInputStream
import javax.servlet.http.HttpServletRequest

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-8-14
 * Time: 上午9:05
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/token")
class TokenController {

    private NotifyService notifyService;

    @RequestMapping("/")
    @ResponseBody
    String token(String signature,String timestamp,String echostr,String nonce) {
        Logger logger = Logger.getLogger(this.class.name);
        logger.log(Level.INFO,"signature [$signature] timestamp [$timestamp] nonce [$nonce] echostr [$echostr]");
        return echostr;
    }

    @RequestMapping(value ="/",method= RequestMethod.POST)
    @ResponseBody
    String postMsg(HttpServletRequest request){
        Logger logger = Logger.getLogger(this.class.name);
        def stream = request.getInputStream();
        def accpetXml = new XmlParser().parse(stream)

        /*def mToUserName=accpetXml.ToUserName.text();
        def mFromUserName=accpetXml.FromUserName.text();
        def mCreateTime=accpetXml.CreateTime.text();       GK_R1-ota-20130926.zip
        def mMsgType=accpetXml.MsgType.text();
        def mContent=accpetXml.Content.text();
        def mMsgId=accpetXml.MsgId.text();*/

        //def msg=new Message(fromUser:accpetXml.FromUserName.text(),toUser:accpetXml.ToUserName.text(),msgType:accpetXml.MsgType.text(),content:accpetXml.Content.text());
        logger.log(Level.INFO,"接受到的xml为： mFromUserName:${accpetXml.FromUserName.text()},mMsgType:${accpetXml.MsgType.text()}")
        String outMsg=notifyService.inNotify(accpetXml);
        logger.log(Level.INFO,"返回的xml为： $outMsg")
        return outMsg;


    }
}
