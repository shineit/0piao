package org.ertuo.bae.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

/**
 * 用户
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:22
 * To change this template use File | Settings | File Templates.
 */
@Entity
class User {
    @Id
    @GeneratedValue
    Integer id;
    String userName,pass,weiXin,phoneNo,inCome,openId
    Date clearCycle,gmtCreate,gmtModify
}
