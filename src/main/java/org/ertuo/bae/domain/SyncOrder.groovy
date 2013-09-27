package org.ertuo.bae.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

/**
 * 订单同步任务
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:22
 * To change this template use File | Settings | File Templates.
 */
@Entity
class SyncOrder {
    @Id
    @GeneratedValue
    Integer id;
    int totalAmount,totalQuantity
    Integer scNo
    Date gmtCreate,gmtModify,syncTime
}
