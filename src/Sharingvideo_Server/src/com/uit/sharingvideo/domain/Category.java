package com.uit.sharingvideo.domain;

import java.io.Serializable;

public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer categoryId;
	private String CategoryName;
	private String CategoryDes;
	
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return CategoryName;
	}
	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}
	public String getCategoryDes() {
		return CategoryDes;
	}
	public void setCategoryDes(String categoryDes) {
		CategoryDes = categoryDes;
	}
}
