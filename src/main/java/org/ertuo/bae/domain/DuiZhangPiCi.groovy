package org.ertuo.bae.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

/**
 * 对账批次
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:22
 * To change this template use File | Settings | File Templates.
 */
@Entity
class DuiZhangPiCi {
    @Id
    @GeneratedValue
    Integer id;
    int totalAmount,totalQuantity
    String status,bankNo
    Date gmtCreate,gmtModify
    Integer jingDianNo
}
