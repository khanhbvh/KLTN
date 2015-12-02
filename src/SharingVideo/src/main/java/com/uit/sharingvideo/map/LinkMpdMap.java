package com.uit.sharingvideo.map;

import com.uit.sharingvideo.domain.LinkMpd;

public interface LinkMpdMap {
	public LinkMpd getLinkMpd(String name);
	public void Update_Idle_Server(String server);
}
