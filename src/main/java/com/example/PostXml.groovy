package com.example

import org.dom4j.Document

import javax.xml.parsers.DocumentBuilder
import javax.xml.parsers.DocumentBuilderFactory

/**
 * Created with IntelliJ IDEA.
 * User: mo.duanm
 * Date: 13-9-22
 * Time: 下午7:37
 * To change this template use File | Settings | File Templates.
 */
class PostXml {
    public static void main(String[] args){

        def writer = new StringWriter()
        def msg = new groovy.xml.MarkupBuilder(writer)
        msg.xml{
            ToUserName("Java")
            FromUserName("Groovy")
            CreateTime("JavaScript")
            MsgType("JavaScript")
            Content("JavaScript")
            MsgId("JavaScript")
        }
        println writer.toString()


        byte[] xmlData = writer.toString().getBytes();

        //String urlStr = "http://127.0.0.1:8080/token/";
        String urlStr = "http://1.linpiao.duapp.com/token/";

        DataInputStream input = null;

        java.io.ByteArrayOutputStream out = null;

        try{

            //获得到位置服务的链接

            URL url = new URL(urlStr);

            URLConnection urlCon = url.openConnection();

            urlCon.setDoOutput(true);

            urlCon.setDoInput(true);

            urlCon.setUseCaches(false);

            //将xml数据发送到位置服务

            urlCon.setRequestProperty("Content-Type", "text/xml");

            urlCon.setRequestProperty("Content-length",String.valueOf(xmlData.length));

            DataOutputStream printout = new DataOutputStream(urlCon.getOutputStream());

            printout.write(xmlData);

            printout.flush();

            printout.close();

            input = new DataInputStream(urlCon.getInputStream());

            byte[] rResult;

            out = new java.io.ByteArrayOutputStream();

            byte[] bufferByte = new byte[256];

            int l = -1;

            int downloadSize = 0;

            while ((l = input.read(bufferByte)) > -1) {

                downloadSize += l;

                out.write(bufferByte, 0, l);

                out.flush();

            }

            out.each{
                println it
            }
//
//            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
//
//            DocumentBuilder db = dbf.newDocumentBuilder();
//
//            Document d = db.parse(new ByteArrayInputStream(rResult));
//
//            String TaskAddr = d.getElementsByTagName("TaskAddr").item(0).getFirstChild().getNodeValue();
//
//            System.out.println("TaskAddr:"+TaskAddr);

        }

        catch(Exception e){

            e.printStackTrace();

        }

        finally {

            try {

                out.close();

                input.close();

            }

            catch (Exception ex) {

            }

        }
    }
}
