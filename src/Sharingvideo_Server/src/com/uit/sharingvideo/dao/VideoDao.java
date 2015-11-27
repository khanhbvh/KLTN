package com.uit.sharingvideo.dao;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public interface VideoDao {
	public List<Video> getVideoListByCatalog(Integer catalogID);
	public List<Video> getTopVideoByCatalog(Integer catalogID, int top, String colOrder);
}
