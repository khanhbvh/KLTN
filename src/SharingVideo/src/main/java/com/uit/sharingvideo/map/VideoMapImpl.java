package com.uit.sharingvideo.map;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public class VideoMapImpl implements VideoMap{
	Connect con = new Connect();
	
	@Override
	public List<Video> getVideoListByCatalog(Integer catalogID) {
		return con.Connect_VideoService().getVideoListByCatalog(catalogID);
	}

	@Override
	public List<Video> getTopVideoByCatalog(Integer catalogID, int top, String colOrder){
		return con.Connect_VideoService().getTopVideoByCatalog(catalogID, top, colOrder);
	}
}
