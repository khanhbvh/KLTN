package com.uit.sharingvideo.dao;

import java.util.List;

import com.uit.sharingvideo.domain.Video;

public interface VideoDao {
	public List<Video> getVideoListByCatalog();
}
