package com.uit.sharingvideo.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

 
public class Sharingvideo_Server {
 
public static void main(String[] args){
	ApplicationContext context = new ClassPathXmlApplicationContext("spring-config-server.xml");
    System.out.println("SharingVideo_Server: Waiting for Request from Client ...");
}
}