package com.example.controller

import com.example.model.Person
import com.example.service.PersonService
import groovy.json.JsonBuilder
import groovy.xml.MarkupBuilder
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.stereotype.Controller
import org.springframework.validation.BindingResult
import org.springframework.web.bind.annotation.*

@Controller
@RequestMapping("/koukou")
class KoukouController {

    @RequestMapping("/")
    String yusuan(Map<String, Object> map) {

        "yusuan"
    }
    @RequestMapping("/edit")
    String edit(Map<String, Object> map) {

        "bianji"
    }
}
