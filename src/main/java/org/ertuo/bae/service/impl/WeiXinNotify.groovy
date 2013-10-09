package org.ertuo.bae.service.impl

import org.ertuo.bae.dao.UserDao
import org.ertuo.bae.domain.Message
import org.ertuo.bae.domain.MsgType
import org.ertuo.bae.domain.User
import org.ertuo.bae.service.NotifyService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

import javax.annotation.Resource
import java.util.logging.Level
import java.util.logging.Logger

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:23
 * To change this template use File | Settings | File Templates.
 */
@Service
class WeiXinNotify implements NotifyService{



    private UserDao userDao;

    @Resource
    public void setUserDao(UserDao userDao){this.userDao=userDao}


    Logger logger = Logger.getLogger(this.class.name);


    @Override
    boolean outNotify( msg) {
        return false  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    String inNotify( msg) {
        logger.log(Level.INFO,"msgType ${msg.MsgType.text()}");

        //文本消息处理
        if(MsgType.TEXT.equals(msg.MsgType.text())){
             return inTextMsg(msg,"哥不懂你在说什么!");
        }
        //订阅和自定义按键
        else if(MsgType.EVENT.equals(msg.MsgType.text())){

            return inEvent(msg);

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
    private String inTextMsg( inMsg,context){
        //返回消息
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName(inMsg.FromUserName.text())
            FromUserName(inMsg.ToUserName.text())
            CreateTime(new Date().getTime())
            MsgType(MsgType.TEXT)
            Content(context)
        }
       return  writer.toString();

    }

    /**
     * 订阅事件处理
     * @param inMsg
     * @return
     */
    private String inEvent( inMsg){
        logger.log(Level.INFO,"eventType ${inMsg.Event.text()}");

        if(MsgType.UNSUBSCRIBE.equals(inMsg.Event.text())){

            return inTextMsg(inMsg,"慢走,欢迎下次光临!");
        }
        if(MsgType.SUBSCRIBE.equals(inMsg.Event.text())){
            def user=userDao.getByOpenId(inMsg.FromUserName.text())
            if(user){
                user.setGmtModify(new Date())
            } else{
                user=new User(userName:inMsg.FromUserName.text(),pass:null,weiXin:inMsg.FromUserName.text(),phoneNo:null,inCome:null,openId:inMsg.FromUserName.text(),statu:"0",gmtCreate:new Date(),gmtModify:new Date())

            }
            userDao.saveOrUpdate(user);
            return inTextMsg(inMsg,"${inMsg.FromUserName.text()} 订阅有惊喜!");
        }

    }

}
