package com.uit.sharingvideo.map;

import com.uit.sharingvideo.domain.LinkMpd;

public class LinkMpdMapImpl implements LinkMpdMap {

	@Override
	public LinkMpd getLinkMpd(String name) {
		Connect con = new Connect();
		return con.Connect_LinkMpdService().getLink(name);
	}

	@Override
	public void Update_Idle_Server(String server) {
		Connect con = new Connect();
		con.Connect_LinkMpdService().Update_Idle_Server(server);
		
	}
}
