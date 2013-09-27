package org.ertuo.bae.service

/**
 * 用户接口
 * User: mo.duanm
 * Date: 13-9-10
 * Time: 下午9:11
 * To change this template use File | Settings | File Templates.
 */
public interface UserService {

    /**
     * 通过微信号码创建用户
     * @param openId 微信加密账号
     * @return
     */
    boolean createByWeiXin(String openId);

    /**
     * 通过序号将微信id更新为微信账号
     * @param indexIdx 序号
     * @param weixin   微信号
     * @return
     */
    boolean updateByOpenId(int indexId,String weixin)
}