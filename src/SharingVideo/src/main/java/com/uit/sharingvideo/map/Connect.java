package com.uit.sharingvideo.map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.uit.sharingvideo.services.CommentService;
import com.uit.sharingvideo.services.LinkMpdService;
import com.uit.sharingvideo.services.UploadService;
import com.uit.sharingvideo.services.VideoService;

import test.test;
import test.test2;

public class Connect {

	public static final String CONFIG_FILE = "spring-config-client.xml";
   /**
    * @return type type of server's service 
    */
	public CommentService Connect_CommentService()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		CommentService commentService = (CommentService)context.getBean("commentService");
		return commentService;
	}
	
	public LinkMpdService Connect_LinkMpdService()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		LinkMpdService linkMpdService = (LinkMpdService)context.getBean("linkMpdService");
		return linkMpdService;
	}
	public test Connect_test()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		test linkMpdService = (test)context.getBean("test");
		return linkMpdService;
	}
	public test2 Connect_test2()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		test2 linkMpdService = (test2)context.getBean("test2");
		return linkMpdService;
	}
	
	public UploadService Connect_UploadService()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		UploadService uploadService = (UploadService)context.getBean("uploadService");
		return uploadService;
	}
	
	public VideoService Connect_VideoService()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext(CONFIG_FILE);
		VideoService videoService = (VideoService)context.getBean("videoService");
		return videoService;
	}
}
