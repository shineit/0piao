package org.ertuo.bae.domain

import javax.persistence.Entity
import javax.persistence.CascadeType
import javax.persistence.FetchType
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.ManyToOne

/**
 * 订单
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:22
 * To change this template use File | Settings | File Templates.
 */
@Entity
class PayOrder {
    @Id
    @GeneratedValue
    Integer id;
    String verifyCode,outOrderId,descri,picUrl,bankNo,status    ;
    Date gmtCreate,gmtModify  ;

    //@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
    //ShangPin sp;
    Integer spId;
}
