package com.example

import org.eclipse.jetty.server.Connector
import org.eclipse.jetty.server.Server
import org.eclipse.jetty.server.nio.SelectChannelConnector
import org.eclipse.jetty.webapp.WebAppContext

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-18
 * Time: 上午10:31
 * To change this template use File | Settings | File Templates.
 */
class WeceemStarter {

    public static void main(String[] args) throws Exception {

        String war="E:\\CloudCache\\CF7073719E54686D38E5643E3708FB9854CE54F7\\1\\##PROFILE##\\Downloads\\weceem-1.1.2.war";
        Server server = new Server();

        Connector connector = new SelectChannelConnector();
        connector.setPort(8080);

        server.setConnectors([connector ] as Connector[]);

        WebAppContext webAppContext = new WebAppContext();//("webapp","G:/sources/bae/mvc/src/main");
        webAppContext.setWar(war);
        server.setHandler(webAppContext);

        try {
            server.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("server is  start");
    }
}
