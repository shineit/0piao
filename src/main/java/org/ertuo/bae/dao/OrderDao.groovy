package org.ertuo.bae.dao

import org.ertuo.bae.domain.PayOrder

/**
 * 订单数据库操作.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:15
 * To change this template use File | Settings | File Templates.
 */
class OrderDao {
    /**
     * 插入订单
     * @param order
     */
    void insert(PayOrder order) {

    }

    /**
     * 更新订单
     * @param order
     */
    void update(PayOrder order)  {

    }

    /**
     * 通过景点和状态查询订单
     * @param jdNo
     * @param status
     * @return
     */
    List<PayOrder> queryByJdStatus(Integer jdNo,String status)  {

    }
}
