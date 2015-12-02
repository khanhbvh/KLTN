package com.uit.sharingvideo.dao;

import org.apache.commons.lang.StringUtils;

import com.uit.sharingvideo.domain.Global;
import com.uit.sharingvideo.domain.LinkMpd;

public class LinkMpdDaoImpl implements LinkMpdDao {
	@Override
	public LinkMpd getLink(String name) {
			LinkMpd link = new LinkMpd();
			//InetAddress addr;
			
				//addr = InetAddress.getLocalHost();
			if(Global.SERVER_2_LEVEL_IDLE > Global.SERVER_1_LEVEL_IDLE--)
			{
				Global.SERVER_2_LEVEL_IDLE++;
				//link.setLinkmpdChrFfIe("/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
			    //link.setLinkmpdForEgle("/resources/video/" + name + "/" + name + "_output.mpd");
				//link.setLinkmpdForEgle("/resources/video/" + name + "/"+ "video"+"_output_chrffie.mpd");
				link.setLinkmpdChrFfIe("http://http://192.168.1.1"+":47"+"/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
				link.setLinkmpdForEgle("http://http://192.168.1.1"+":47"+"/resources/video/" + name + "/" + name + "_output.mpd");
				//link.setLinkmpdChrFfIe("/resources/video/" + name + "/"+"input_dash.mpd");
				return link;
			}
			else{
				Global.SERVER_1_LEVEL_IDLE++;
				link.setLinkmpdChrFfIe("http://http://192.168.1.2"+":47"+"/resources/video/" + name + "/" + name + "_output_chrffie.mpd");
				link.setLinkmpdForEgle("http://http://192.168.1.2"+":47"+"/resources/video/" + name + "/" + name + "_output.mpd");
				//link.setLinkmpdChrFfIe("/resources/video/" + name + "/"+"input_dash.mpd");
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
	/*public static void main(String[] args) {
		String  a = "http://192.168.1.2/asdasd";
		System.out.println(StringUtils.left(a, 18));
	}*/

}
