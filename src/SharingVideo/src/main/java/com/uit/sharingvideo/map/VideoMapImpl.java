package com.uit.sharingvideo.map;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public class VideoMapImpl implements VideoMap{
	Connect con = new Connect();

	@Override
	public List<Video> getVideos(int startRecord, int numGet, String colOrder){
		return con.Connect_VideoService().getVideos(startRecord, numGet, colOrder);
	}
	
	@Override
	public List<Video> getVideoListByCatalog(Integer catalogID) {
		return con.Connect_VideoService().getVideoListByCatalog(catalogID);
	}

	@Override

	public List<Video> getTopVideo(String colWhere, Integer catalogID, int top, String colOrder){
		return con.Connect_VideoService().getTopVideo(colWhere, catalogID, top, colOrder);
	}

	@Override
	public List<Video> getVideosByCol(String colWhere, int Id, int startRecord, int numGet, String colOrder) {
		return con.Connect_VideoService().getVideosByCol(colWhere, Id, startRecord, numGet, colOrder);
	}

	public List<Video> getTopVideoByCatCountry(String colWhere, Integer catalogID, 
			String countryCol, Integer coId, 
			int top, String colOrder){
		return con.Connect_VideoService().getTopVideoByCatCountry(colWhere, catalogID, countryCol, coId, top, colOrder);
	}
}
