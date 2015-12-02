package com.uit.sharingvideo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uit.sharingvideo.domain.Comment;
import com.uit.sharingvideo.map.CommentMap;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/Comment")
public class CommentController {
	/*@Autowired  
	CommentService commentService;*/
	
	@Autowired
	CommentMap commentMap;
	
	@RequestMapping(value="/listComment", 
			method=RequestMethod.POST)
    public @ResponseBody 
    List<Comment> GetList()
    {
		List<Comment> commentList = commentMap.getCommentList(); 
		return commentList;
    }
	
	@RequestMapping(value="/saveComment", 
			method=RequestMethod.POST)
    public @ResponseBody 
    void Save(@RequestBody Comment comment)
    {
		commentMap.insertData(comment);
    }
	
	/* @MessageMapping("/simplemessages")
	    @SendTo("/topic/simplemessagesresponse")
	    public Comment processMessageFromClient(Comment comment,
	            Principal principal) throws Exception {
	        Thread.sleep(3000);
	        //comment.setCreated(principal.getName()); 
	        commentMap.insertData(comment);
	        return comment;
	    }*/
}
