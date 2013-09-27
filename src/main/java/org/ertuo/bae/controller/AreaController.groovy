package org.ertuo.bae.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-8-14
 * Time: 上午9:05
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/area")
class AreaController {
    @RequestMapping("/")
    String yusuan(Map<String, Object> map) {

        "area"
    }
}
