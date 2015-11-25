package com.uit.sharingvideo.map;

import java.util.List;

import com.uit.sharingvideo.domain.Comment;

public class CommentMapImpl implements CommentMap {
	Connect con = new Connect();
	@Override
	public void insertData(Comment comment) {
		
	    con.Connect_CommentService().insertData(comment);
		
	}

	@Override
	public List<Comment> getCommentList() {
	    return con.Connect_CommentService().getCommentList();
	}

}
