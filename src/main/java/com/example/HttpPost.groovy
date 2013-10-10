package com.example

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-10-10
 * Time: 上午10:46
 * To change this template use File | Settings | File Templates.
 */
import groovyx.net.http.HTTPBuilder
import org.apache.http.conn.ClientConnectionManager
import org.apache.http.conn.scheme.Scheme
import org.apache.http.conn.scheme.SchemeRegistry
import org.apache.http.conn.ssl.SSLSocketFactory
import org.apache.http.impl.client.DefaultHttpClient

import javax.net.ssl.SSLContext
import javax.net.ssl.TrustManager
import javax.net.ssl.X509TrustManager
import java.security.SecureRandom
import java.security.cert.X509Certificate

import static groovyx.net.http.ContentType.URLENC

def http = new HTTPBuilder( 'https://api.weixin.qq.com/cgi-bin/menu/create?access_token=0piao' )

//=== SSL UNSECURE CERTIFICATE ===
def sslContext = SSLContext.getInstance("SSL")
sslContext.init(null, [
        new X509TrustManager() {public X509Certificate[] getAcceptedIssuers() {null }
            public void checkClientTrusted(X509Certificate[] certs, String authType) { }
            public void checkServerTrusted(X509Certificate[] certs, String authType) { }
        } ] as TrustManager[], new SecureRandom())
def sf = new SSLSocketFactory(sslContext, SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER)
def httpsScheme = new Scheme("https", sf, 443)
http.client.connectionManager.schemeRegistry.register( httpsScheme )
// auth omitted...
def postBody = [status:'update!',source:'httpbuilder'] // will be url-encoded

def button="""
 {
     "button":[
     {
          "type":"click",
          "name":"today",
          "key":"V1001_TODAY_MUSIC"
      },
      {
           "type":"view",
           "name":"tomarrow",
           "url":"http://www.qq.com/"
      }]
 }
"""

http.post(body: button,
        requestContentType: URLENC ) { resp ,reader->
    assert resp.statusLine.statusCode == 200
    System.out << reader
}







