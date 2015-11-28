package com.uit.sharingvideo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uit.sharingvideo.domain.Video;
import com.uit.sharingvideo.map.VideoMap;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	VideoMap videoMap;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public ModelAndView home(Locale locale) {
		List<Video> recentVideoList = videoMap.getVideos(0, 6, "DateCreate");
		List<Video> viewMostVideoList1 = videoMap.getVideos(0, 4, "NumView");
		List<Video> viewMostVideoList2 = videoMap.getVideos(4, 4, "NumView");
		List<Video> viewMostVideoList3 = videoMap.getVideos(8, 4, "NumView");
		List<Video> viewMostVideoList4 = videoMap.getVideos(12, 4, "NumView");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("recentVideoList", recentVideoList);
		map.put("viewMostVideoList1", viewMostVideoList1);
		map.put("viewMostVideoList2", viewMostVideoList2);
		map.put("viewMostVideoList3", viewMostVideoList3);
		map.put("viewMostVideoList4", viewMostVideoList4);
		
		return new ModelAndView("home/home", "map", map);
	}
}
