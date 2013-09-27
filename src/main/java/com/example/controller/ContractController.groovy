package com.example.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/contract")
class ContractController {

    @RequestMapping("/")
    String yusuan(Map<String, Object> map) {

        "contract"
    }
}
