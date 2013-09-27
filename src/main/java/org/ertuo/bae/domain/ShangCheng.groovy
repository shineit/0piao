package org.ertuo.bae.domain

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id

/**
 * 景点
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午8:22
 * To change this template use File | Settings | File Templates.
 */
@Entity
class ShangCheng {
    @Id
    @GeneratedValue
    Integer id;
    String name,fileDownLoadUrl,downloadUserName,downloadPassword
    Date gmtCreate,gmtModify
}
