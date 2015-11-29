package com.uit.sharingvideo.domain;

import java.io.Serializable;
import java.sql.Date;

public class Video implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer videoId;
	private String title;
	private Integer size;
	private String filePath;
	private String description;
	private Date dateCreate;
	private Integer numView;
	private Integer numLike;
	private Integer numShare;
	private String img;
	
	private Category category;
	private Type type;
	private User user;
	private Country country;
	
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Integer getNumView() {
		return numView;
	}
	public void setNumView(Integer numView) {
		this.numView = numView;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	
	
	public Integer getVideoId() {
		return videoId;
	}
	public void setVideoId(Integer videoId) {
		this.videoId = videoId;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getDateCreate() {
		return dateCreate;
	}
	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}
	
	public Integer getNumLike() {
		return numLike;
	}
	public void setNumLike(Integer numLike) {
		this.numLike = numLike;
	}
	
	public Integer getNumShare() {
		return numShare;
	}
	public void setNumShare(Integer numShare) {
		this.numShare = numShare;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
