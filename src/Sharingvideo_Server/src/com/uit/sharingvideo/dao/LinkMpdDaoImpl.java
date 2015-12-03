package com.uit.sharingvideo.dao;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.uit.sharingvideo.checksv.CheckServerService;
import com.uit.sharingvideo.domain.Global;
import com.uit.sharingvideo.domain.LinkMpd;

public class LinkMpdDaoImpl implements LinkMpdDao {
	CheckServerService checkServer1 = Connect_StorageService();
	CheckServerService checkServer2 = Connect_StorageService2();

	@Override
	public LinkMpd getLink(String name) {
		LinkMpd link = new LinkMpd();
		// InetAddress addr;

		// addr = InetAddress.getLocalHost();
		String serverOk = null;
		String serverOk2 = null;
		try {
			serverOk = checkServer1.check();
		} catch (Exception e) {
			serverOk = null;
			throw e;
		}

		try {
			serverOk2 = checkServer1.check();
		} catch (Exception e) {
			serverOk2 = null;
			throw e;
		}
		if (Global.SERVER_2_LEVEL_IDLE > Global.SERVER_1_LEVEL_IDLE) {
			
			if(serverOk != null)
			{
				Global.SERVER_1_LEVEL_IDLE++;
				link = getLinkServer1(name);
			}
			else{
				Global.SERVER_2_LEVEL_IDLE++;
				link = getLinkServer2(name);
			}
			
			return link;
		} else {
			if (serverOk2 != null) {
				Global.SERVER_2_LEVEL_IDLE++;
				link = getLinkServer2(name);
			}
			else{
				Global.SERVER_1_LEVEL_IDLE++;
				link = getLinkServer1(name);
			}
			return link;
		 }
		
	}

	@Override
	public void Update_Idle_Server(String server) {
		if (StringUtils.left(server, 18) == "http://192.168.1.2") {
			Global.SERVER_2_LEVEL_IDLE--;
		}
		// http://192.168.1.1-> ki tu thu 19
		if (StringUtils.left(server, 18) == "http://192.168.1.1") {
			Global.SERVER_1_LEVEL_IDLE--;
		}

	}
	/*
	 * public static void main(String[] args) { String a =
	 * "http://192.168.1.2/asdasd"; System.out.println(StringUtils.left(a, 18));
	 * }
	 */

	public LinkMpd getLinkServer1(String name)
	{ 
		LinkMpd link = new LinkMpd();
		link.setLinkmpdChrFfIe("http://http://192.168.1.1" + ":47" + "/resources/video/" + name + "/" + name
				+ "_output_chrffie.mpd");
		link.setLinkmpdForEgle(
				"http://192.168.1.1" + ":47" + "/resources/video/" + name + "/" + name + "_output.mpd");
		return link;
	}
	public LinkMpd getLinkServer2(String name)
	{ 
		LinkMpd link = new LinkMpd();
		link.setLinkmpdChrFfIe("http://192.168.1.2" + ":47" + "/resources/video/" + name + "/" + name
				+ "_output_chrffie.mpd");
		link.setLinkmpdForEgle(
				"http://192.168.1.2" + ":47" + "/resources/video/" + name + "/" + name + "_output.mpd");
		return link;
	}
	
	public CheckServerService Connect_StorageService() {
		try{
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config-client.xml");
		CheckServerService checkServer1 = (CheckServerService) context.getBean("checkServer1");

		return checkServer1;
		}
		catch (Exception e){
			
			checkServer1=null;
			throw e;
		}
	}
	public CheckServerService Connect_StorageService2() {
		try{
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config-client.xml");
		CheckServerService checkServer2 = (CheckServerService) context.getBean("checkServer2");

		return checkServer2;
		}
		catch (Exception e){
			
			checkServer2=null;
			throw e;
		}
	}
}
