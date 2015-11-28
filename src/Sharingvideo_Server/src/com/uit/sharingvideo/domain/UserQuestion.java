package com.uit.sharingvideo.domain;

import java.io.Serializable;
import java.sql.Date;

public class UserQuestion implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer questionId;
	private String questionTitle;
	private String qContent;
	private Date dateAsked;
	private User user;
	
	public Integer getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
	
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	
	public Date getDateAsked() {
		return dateAsked;
	}
	public void setDateAsked(Date dateAsked) {
		this.dateAsked = dateAsked;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
