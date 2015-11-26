package com.uit.sharingvideo.map;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public class VideoMapImpl implements VideoMap{
	Connect con = new Connect();
	
	@Override
	public List<Video> getVideoListByCatalog() {
		return con.Connect_VideoService().getVideoListByCatalog();
	}

}
