package com.uit.sharingvideo.main;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.uit.sharingvideo.dao.CommentDao;
import com.uit.sharingvideo.dao.CommentDaoImpl;
 
public class StartRmiServer {
 
public static void main(String[] args) {
ApplicationContext context = new ClassPathXmlApplicationContext("spring-config-server.xml");
System.out.println("Waiting for Request from Client ...");
}
}