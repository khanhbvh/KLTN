package com.uit.sharingvideo.domain;

import java.io.Serializable;
import java.sql.Date;

public class RecentlyViewed implements Serializable{
	private static final long serialVersionUID = 1L;
	private User user;
	private Video video;
	private Date ViewedDate;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	
	public Date getViewedDate() {
		return ViewedDate;
	}
	public void setViewedDate(Date viewedDate) {
		ViewedDate = viewedDate;
	}
}
