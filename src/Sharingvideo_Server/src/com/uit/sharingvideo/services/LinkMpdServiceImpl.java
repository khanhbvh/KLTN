package com.uit.sharingvideo.services;


import com.uit.sharingvideo.dao.LinkMpdDaoImpl;
import com.uit.sharingvideo.domain.LinkMpd;

public class LinkMpdServiceImpl implements LinkMpdService{
	LinkMpdDaoImpl link = new LinkMpdDaoImpl() ; 
	
	@Override
	public LinkMpd getLink(String name) {
		System.out.println("pass");
		System.out.println(link.getLink(name));
		return link.getLink(name);
	}

}
