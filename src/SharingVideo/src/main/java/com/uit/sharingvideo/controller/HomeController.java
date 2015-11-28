package com.uit.sharingvideo.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uit.sharingvideo.map.LinkMpdMap;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	/*
	 * @Autowired CommentService commentService;
	 */
	/*
	 * @Autowired LinkMpdService linkService;
	 */
	@Autowired
	LinkMpdMap linkMpdMap;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale) {
		return "home/home";
	}

	// @RequestMapping(value = "/", method = RequestMethod.GET)
	// public String home(Locale locale, Model model) {
	// ExecuteComandToFormatVideo test = new ExecuteComandToFormatVideo();
	// String path;
	// /*try {
	// test.getMpd("vd2");
	// } catch (InterruptedException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// path = test.getFileMpd("vd2");*/
	// path = "/resources/video/vd2/input_dash.mpd";
	// model.addAttribute("path", path);
	//
	// return "home";
	// }
}
