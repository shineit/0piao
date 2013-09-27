package org.ertuo.bae.domain

/**
 * 消息
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:21
 * To change this template use File | Settings | File Templates.
 */
class Message {
    String fromUser,toUser,msgType,content

    @Override
    public String toString(){
           return "fromUser:$fromUser,toUser:$toUser,msgType:$msgType"
    }
}
