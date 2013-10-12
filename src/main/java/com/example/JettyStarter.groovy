package com.example;

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-7-16
 * Time: 上午9:03
 * To change this template use File | Settings | File Templates.
 */
    import groovy.text.SimpleTemplateEngine;
    import org.eclipse.jetty.server.Connector;
    import org.eclipse.jetty.server.Server;
    import org.eclipse.jetty.server.nio.SelectChannelConnector;
    import org.eclipse.jetty.servlet.DefaultServlet;
    import org.eclipse.jetty.servlet.ServletHolder;
    import org.eclipse.jetty.webapp.WebAppContext;

    import java.io.File;
    import java.util.Properties;

public class JettyStarter {
        public static void main(String[] args) throws Exception {

            //启动jetty之前设置dev环境的配置
            Properties props = new Properties()
            File propsFile = new File('src\\main\\resources\\filters\\filter-dev.properties')
            props.load(propsFile.newDataInputStream())
            final String text = new File('src\\main\\resources\\\\db.properties').text

            def engine = new SimpleTemplateEngine()
            def template = engine.createTemplate(text).make(props)

            new File(Thread.currentThread().getContextClassLoader().getResource('db.properties').toURI()).write(template.toString())

            Server server = new Server();

            Connector connector = new SelectChannelConnector();
            connector.setPort(8080);

            server.setConnectors( [ connector ] as Connector[]);

            WebAppContext webAppContext = new WebAppContext();//("webapp","G:/sources/bae/mvc/src/main");


            webAppContext.setResourceBase("src\\main\\webapp\\");
            //webAppContext.setWar("G:/sources/bae/mvc/src/main/webapp");
            webAppContext.setContextPath("/");
            webAppContext.setServer(server);
            server.setHandler(webAppContext);

            webAppContext.setClassLoader(Thread.currentThread().getContextClassLoader());
            webAppContext.setConfigurationDiscovered(true);
            webAppContext.setParentLoaderPriority(true);
            server.setHandler(webAppContext);


            /*DefaultServlet defaultServlet = new DefaultServlet();
            ServletHolder holder = new ServletHolder(defaultServlet);
            holder.setInitParameter("useFileMappedBuffer", "false");
            webAppContext.addServlet(holder, "/");*/

            System.out.println(webAppContext.getContextPath());
            System.out.println(webAppContext.getDescriptor());
            System.out.println(webAppContext.getResourceBase());
            System.out.println(webAppContext.getBaseResource());

            try {
                server.start();
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("server is  start");
        }
    }