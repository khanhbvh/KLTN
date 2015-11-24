package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.uit.sharingvideo.domain.Comment;

public class CommentExtractor implements ResultSetExtractor<Comment>{
	public Comment extractData(ResultSet resultSet) throws SQLException,  
	   DataAccessException {  
	  Comment comment = new Comment();  
	   
	  comment.setCommentId(resultSet.getInt(1));
	  comment.setVideoId(resultSet.getInt(2)); 
	  comment.setUserId(resultSet.getInt(3));  
	  comment.setContent(resultSet.getString(4));  
	  comment.setCreated(resultSet.getDate(5)); 
	  
	  return comment;  
	 }  
}
