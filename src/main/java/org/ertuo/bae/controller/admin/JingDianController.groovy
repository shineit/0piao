package org.ertuo.bae.controller.admin

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-17
 * Time: 下午7:18
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/jd")
class JingDianController {
    @RequestMapping("/")
    String list(Map<String, Object> map) {

        "admin/jd"
    }
}
