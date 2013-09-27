package com.example.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/shai")
class ShaiController {

    @RequestMapping("/")
    String yusuan(Map<String, Object> map) {

        "shai"
    }
}
