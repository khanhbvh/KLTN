package com.uit.sharingvideo.services;

import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
import com.uit.sharingvideo.dao.CommentDaoImpl;
import com.uit.sharingvideo.domain.Comment;

public class CommentServiceImpl implements CommentService{
	//@Autowired  
	//CommentDao commentdao;
	CommentDaoImpl commentdao = new CommentDaoImpl(); 
	
	public void insertData(Comment comment){
		commentdao.insertData(comment);
	}
	
	@Override
	public List<Comment> getCommentList() {
		return commentdao.getCommentList();
	}

}
