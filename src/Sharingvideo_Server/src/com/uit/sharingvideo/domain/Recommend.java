package com.uit.sharingvideo.domain;

import java.io.Serializable;

public class Recommend implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Integer userId;
	Integer videoId;
	Float rating;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getVideoId() {
		return videoId;
	}
	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}
	public Float getRating() {
		return rating;
	}
	public void setRating(Float rating) {
		this.rating = rating;
	}
}
