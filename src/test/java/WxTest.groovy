import groovyx.net.http.HTTPBuilder
import org.ertuo.bae.pay.alipay.config.AlipayConfig
import org.ertuo.bae.pay.alipay.sign.MD5
import org.ertuo.bae.pay.alipay.util.AlipaySubmit

import static groovyx.net.http.ContentType.URLENC

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-10-14
 * Time: 下午8:17
 * To change this template use File | Settings | File Templates.
 */
class WxTest extends GroovyTestCase {
    String urlStr = "http://127.0.0.1:8080/token/";
    //String urlStr = "http://1.linpiao.duapp.com/token/";

    void testTextMsg() {
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName("Java")
            FromUserName("Groovy")
            CreateTime("JavaScript")
            MsgType("text")
            Context("subscribe")
            MsgId("JavaScript")
        }
       // println writer.toString()
        def http = new HTTPBuilder( urlStr )
        http.post(  body:  writer.toString(),
            requestContentType: URLENC ) { resp ,reader->
            assert resp.statusLine.statusCode == 200
            System.out << reader
        }
    }

    void testCorrentTextMsg() {
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName("Java")
            FromUserName("Groovy")
            CreateTime("JavaScript")
            MsgType("text")
            Content("1#889098")
            MsgId("JavaScript")
        }
        // println writer.toString()
        def http = new HTTPBuilder( urlStr )
        http.post(  body:  writer.toString(),
                requestContentType: URLENC ) { resp ,reader->
            assert resp.statusLine.statusCode == 200
            System.out << reader
        }
    }

    void testKonggeTextMsg() {
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName("Java")
            FromUserName("Groovy")
            CreateTime("JavaScript")
            MsgType("text")
            Content("1#889 98")
            MsgId("JavaScript")
        }
        // println writer.toString()
        def http = new HTTPBuilder( urlStr )
        http.post(  body:  writer.toString(),
                requestContentType: URLENC ) { resp ,reader->
            assert resp.statusLine.statusCode == 200
            System.out << reader
        }
    }

    void testSubcribe() {
        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName("Java")
            FromUserName("Groovy")
            CreateTime("JavaScript")
            MsgType("event")
            Event("subscribe")
            MsgId("JavaScript")
        }
        def http = new HTTPBuilder( urlStr )
        http.post(  body:  writer.toString(),
                requestContentType: URLENC ) { resp ,reader->
            assert resp.statusLine.statusCode == 200
            System.out << reader
        }

    }


    void testLoginSign(){

        Map<String, String> sParaTemp = new HashMap<String, String>();
        sParaTemp.put("target_service", "user.auth.quick.login");
        sParaTemp.put("service", "alipay.auth.authorize");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
        sParaTemp.put("return_url", AlipayConfig.return_url);



        println "\t"+AlipaySubmit.buildRequestMysign(sParaTemp)
    }

}
