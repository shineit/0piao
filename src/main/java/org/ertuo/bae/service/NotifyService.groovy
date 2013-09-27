package org.ertuo.bae.service

import org.ertuo.bae.domain.Message

/**
 * 通知接口.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:20
 * To change this template use File | Settings | File Templates.
 */
public interface NotifyService {

    /**
     * 发送通知
     * @param msg
     * @return
     */
    boolean outNotify( msg)

    /**
     * 接收通知
     * @param msg
     * @return 返回结果
     */
    String inNotify( msg)

}