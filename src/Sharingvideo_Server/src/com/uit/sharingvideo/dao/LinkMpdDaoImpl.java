package com.uit.sharingvideo.dao;


import com.uit.sharingvideo.domain.LinkMpd;
public class LinkMpdDaoImpl implements LinkMpdDao{
	@Override
	public LinkMpd getLink(String name) {
			LinkMpd link = new LinkMpd();
			/*link.setLinkmpdChrFfIe("/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
		    link.setLinkmpdForEgle("/resources/video/" + name + "/" + name + "_output.mpd");*/
			//link.setLinkmpdForEgle("/resources/video/" + name + "/"+"input_output.mpd");
			link.setLinkmpdChrFfIe("/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
			link.setLinkmpdForEgle("/resources/video/" + name + "/" + name + "_output.mpd");
			//link.setLinkmpdChrFfIe("/resources/video/" + name + "/"+"input_dash.mpd");
			return link;
		
	}

	
}
