package com.uit.sharingvideo.services;

import java.util.List;
import com.uit.sharingvideo.domain.Comment;

public interface CommentService { 
	public void insertData(Comment comment);  
	public List<Comment> getCommentList();  
}
