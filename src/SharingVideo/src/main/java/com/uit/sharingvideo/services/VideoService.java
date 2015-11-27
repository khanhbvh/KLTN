package com.uit.sharingvideo.services;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public interface VideoService {
	public List<Video> getVideoListByCatalog(Integer catalogID);
	public List<Video> getTopVideoByCatalog(Integer catalogID, int top, String colOrder);
}
