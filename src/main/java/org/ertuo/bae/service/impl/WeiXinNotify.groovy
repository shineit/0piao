package org.ertuo.bae.service.impl

import org.ertuo.bae.domain.Message
import org.ertuo.bae.domain.MsgType
import org.ertuo.bae.service.NotifyService

import java.util.logging.Level

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:23
 * To change this template use File | Settings | File Templates.
 */
class WeiXinNotify implements NotifyService{
    @Override
    boolean outNotify( msg) {
        return false  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    String inNotify( msg) {
        //文本消息处理
        if(MsgType.TEXT.toLowerCase().equals(msg.MsgType.text())){
             return inTextMsg(msg);
        }
        //订阅和自定义按键
        else if(MsgType.EVENT.toLowerCase().equals(msg.MsgType.text())){

        }
        //其他事件转发
        else{

        }


    }

    /**
     *文字消息处理
     * @param inMsg
     * @return
     */
    private String inTextMsg( inMsg){
        //返回消息
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName(inMsg.FromUserName.text())
            FromUserName(inMsg.ToUserName.text())
            CreateTime(new Date().getTime())
            MsgType(MsgType.TEXT.toLowerCase())
            Content("hello")
        }
       return  writer.toString();

    }

    /**
     * 订阅事件处理
     * @param inMsg
     * @return
     */
    private String inEvent(Message inMsg){


    }

}
