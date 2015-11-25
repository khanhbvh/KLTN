package com.uit.sharingvideo.map;

import java.util.List;

import com.uit.sharingvideo.domain.Comment;

public interface CommentMap {
	public void insertData(Comment comment);  
	public List<Comment> getCommentList(); 
}
