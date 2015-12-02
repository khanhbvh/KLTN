package com.uit.sharingvideo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("WatchController")
@RequestMapping(value = "/watch")
public class WatchController {
	@RequestMapping(value = { "", "/watch" })
	public ModelAndView product(HttpServletRequest req){
		String videoId = req.getParameter("id");
		System.out.print(videoId);
		return new ModelAndView("watch/watch");
	}
}
