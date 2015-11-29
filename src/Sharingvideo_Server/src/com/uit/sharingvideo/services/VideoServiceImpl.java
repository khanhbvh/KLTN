package com.uit.sharingvideo.services;

import java.util.List;

import com.uit.sharingvideo.dao.VideoDaoImpl;
import com.uit.sharingvideo.domain.Video;

public class VideoServiceImpl implements VideoService{
	VideoDaoImpl videodao = new VideoDaoImpl();
	
	@Override
	public List<Video> getVideoListByCatalog(Integer categoryID) {
		// TODO Auto-generated method stub
		return videodao.getVideoListByCatalog(categoryID);
	}

	@Override
	public List<Video> getTopVideo(String colWhere, Integer catalogID, int top, String colOrder){
		return videodao.getTopVideo(colWhere, catalogID, top, colOrder);
	}

	@Override
	public List<Video> getVideos(int startRecord, int numGet, String colOrder) {
		return videodao.getVideos(startRecord, numGet, colOrder);
	}
	
	public List<Video> getVideosByCol(String colWhere, int Id, int startRecord, int numGet, String colOrder){
		return videodao.getVideosByCol(colWhere, Id, startRecord, numGet, colOrder);
	}
	
	public List<Video> getTopVideoByCatCountry(String colWhere, Integer catalogID, 
			String countryCol, Integer coId, 
			int top, String colOrder){
		return videodao.getTopVideoByCatCountry(colWhere, catalogID, countryCol, coId, top, colOrder);
	}
}
