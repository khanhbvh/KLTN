package com.uit.sharingvideo.domain;

import java.io.Serializable;

public class Country implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer countryId;
	private String countryName;
	
	public Integer getCountryId() {
		return countryId;
	}
	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}
	
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
	
}
