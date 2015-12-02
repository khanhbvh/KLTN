package com.uit.sharingvideo.dao;


import com.uit.sharingvideo.domain.LinkMpd;

public interface LinkMpdDao {

	public LinkMpd getLink(String name);  
	public void Update_Idle_Server(String server);
}
