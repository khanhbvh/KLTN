package com.uit.sharingvideo.services;

import com.uit.sharingvideo.domain.LinkMpd;

public interface LinkMpdService { 
	public LinkMpd getLink(String name);
	public void Update_Idle_Server(String server);
}
