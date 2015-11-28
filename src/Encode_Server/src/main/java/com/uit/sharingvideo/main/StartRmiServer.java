package com.uit.sharingvideo.main;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

 
public class StartRmiServer {
 
public static void main(String[] args) {
ApplicationContext context = new ClassPathXmlApplicationContext("spring-config-server.xml");
System.out.println("Encode_Server: Waiting for Request from Client ...");
}
}