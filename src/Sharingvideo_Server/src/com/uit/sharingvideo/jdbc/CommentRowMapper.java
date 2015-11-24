package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.uit.sharingvideo.domain.Comment;

public class CommentRowMapper  implements RowMapper<Comment> {
	 @Override  
	 public Comment mapRow(ResultSet resultSet, int line) throws SQLException {  
		 CommentExtractor commentExtractor = new CommentExtractor();  
		 return commentExtractor.extractData(resultSet);  
	 }  
}
