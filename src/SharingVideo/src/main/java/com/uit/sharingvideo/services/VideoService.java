package com.uit.sharingvideo.services;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public interface VideoService {
	public List<Video> getVideos(int startRecord, int numGet, String colOrder);
	public List<Video> getVideoListByCatalog(Integer catalogID);
	public List<Video> getTopVideo(String colWhere, Integer catalogID, int top, String colOrder);
}
