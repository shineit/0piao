package com.example

import groovy.text.GStringTemplateEngine
import groovy.text.SimpleTemplateEngine
import groovy.text.Template

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-3
 * Time: 下午4:58
 * To change this template use File | Settings | File Templates.
 */
    def a="/storage/sdcard0/bluetooth/SCR00002-4-2.jpg"
    println (a.substring(a.lastIndexOf("/")+1 ) )
    def aa=[]
    println(aa[0])
if(aa[0]){
    println "not null"
}else{
    println "null"
}
Properties props = new Properties()
File propsFile = new File('..\\..\\..\\resources\\filters\\filter-dev.properties')

