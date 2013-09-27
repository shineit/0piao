package org.ertuo.bae.service

import org.ertuo.bae.domain.PayOrder

/**
 * 订单服务.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:56
 * To change this template use File | Settings | File Templates.
 */
interface OrderService {

    /**
     *订单同步
     * @return    成功OR失败
     */
    boolean syncorder();

    /**
     * 订单删除
     * @return
     */
    boolean delete();

    /**
     * 订单退款
     * @return
     */
    boolean refund()

    /**
     * 生成对账单
     * @return
     */
    boolean genBill();

    /**
     * 对账单结算
     * @return
     */
    boolean clearBill();

    /**
     * 订单查询
     * @param verifyCode  验证码
     * @return
     */
    PayOrder query(String verifyCode);

    /**
     * 商城对账单下载
     * @return
     */
    boolean downloadBill();

}
