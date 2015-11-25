package com.uit.sharingvideo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("HistoryController")
@RequestMapping(value = "/history")
public class HistoryController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView history() { 
		return new ModelAndView("history/history"); 
	}
}
