package org.ertuo.bae.dao

import org.ertuo.bae.domain.User
import org.springframework.orm.hibernate3.HibernateTemplate
import org.springframework.stereotype.Component
import org.springframework.stereotype.Repository

import javax.annotation.Resource

/**
 * 用户数据库操作.
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:19
 * To change this template use File | Settings | File Templates.
 */
@Repository
class UserDao {

    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    @Resource
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    /**
     * 保存用户
     * @param user
     */
    void saveOrUpdate(User user){
        hibernateTemplate.saveOrUpdate(user);
    }

    /**
     * 更新用户
     * @param user
     */
    void update(User user){

    }

    User getByOpenId(openId){
        def users=this.getHibernateTemplate().find("from User u where u.openId=?", openId)

        return users[0]
    }
}
