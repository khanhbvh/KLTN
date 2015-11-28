package com.uit.sharingvideo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uit.sharingvideo.domain.LinkMpd;
import com.uit.sharingvideo.map.LinkMpdMap;

@Controller("PlayController")
@RequestMapping(value = "/play")
public class PlayController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	LinkMpdMap linkMpdMap;

	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView play(Model model) { 
		LinkMpd path = linkMpdMap.getLinkMpd("input1.mp4");
		//path = "/resources/video/input/input_dash.mpd";
		model.addAttribute("path", path);
		return new ModelAndView("play/play"); 
	}
}
