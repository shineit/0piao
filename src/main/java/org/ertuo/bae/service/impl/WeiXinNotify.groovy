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

    def static final WELECOME_MSG="""
请输入“1位操作码+#+6位验证码”，例如:\t
查询：1#204567 \t
退款：2#908765 \t
目前只支持查询和退款。
        """



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
            return analyzeTextMsg(msg)
             //return inTextMsg(msg,WELECOME_MSG);
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
     *分析f
     * @param p
     */
    def analyzeTextMsg(msg) {
        def p=msg.Content.text()
       if(p==~/\d\#\d{6}/){
           def option=p.split(MsgType.SPLIT_SYABLE)[0]
           def code=p.split(MsgType.SPLIT_SYABLE)[1]
           if(MsgType.QUERY==option){
               return inTextMsg(msg,"$code 查询成功。");
           }
           if(MsgType.DELETE==option){
               return inTextMsg(msg,"$code 退款成功。");
           }
       }else{
           return inTextMsg(msg,"格式错误，请输入正确的格式。 \t $WELECOME_MSG ");
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

            return inTextMsg(inMsg,WELECOME_MSG);
        }
        if(MsgType.SUBSCRIBE.equals(inMsg.Event.text())){
            def user=userDao.getByOpenId(inMsg.FromUserName.text())
            if(user){
                user.setGmtModify(new Date())
            } else{
                user=new User(userName:inMsg.FromUserName.text(),pass:null,weiXin:inMsg.FromUserName.text(),phoneNo:null,inCome:null,openId:inMsg.FromUserName.text(),statu:"0",gmtCreate:new Date(),gmtModify:new Date())

            }
            userDao.saveOrUpdate(user);
            return inTextMsg(inMsg,WELECOME_MSG);
        }

    }

}
