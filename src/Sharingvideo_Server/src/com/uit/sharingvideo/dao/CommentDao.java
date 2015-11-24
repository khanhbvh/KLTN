package com.uit.sharingvideo.dao;

import java.util.List;
import com.uit.sharingvideo.domain.Comment;

public interface CommentDao {
	public void insertData(Comment comment); 
	public List<Comment> getCommentList();  
}
