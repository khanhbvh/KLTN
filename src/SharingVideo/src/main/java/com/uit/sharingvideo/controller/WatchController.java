package com.uit.sharingvideo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uit.sharingvideo.domain.LinkMpd;
import com.uit.sharingvideo.map.LinkMpdMap;

@Controller("WatchController")
@RequestMapping(value = "/watch")
public class WatchController {
	@Autowired
	LinkMpdMap linkMpdMap;
	@RequestMapping(value = { "", "/watch" })
	public ModelAndView play(Model model) { 
		LinkMpd path = linkMpdMap.getLinkMpd("input1.mp4");
		//path = "/resources/video/input/input_dash.mpd";
		model.addAttribute("path", path);
		return new ModelAndView("play/play"); 
	}
}
