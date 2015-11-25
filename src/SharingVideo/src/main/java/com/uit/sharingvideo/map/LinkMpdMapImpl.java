package com.uit.sharingvideo.map;

import com.uit.sharingvideo.domain.LinkMpd;

public class LinkMpdMapImpl implements LinkMpdMap {

	@Override
	public LinkMpd getLinkMpd(String name) {
		Connect con = new Connect();
		return con.Connect_LinkMpdService().getLink(name);
	}
}
