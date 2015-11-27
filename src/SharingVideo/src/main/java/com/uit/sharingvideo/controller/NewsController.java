package com.uit.sharingvideo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uit.sharingvideo.domain.Video;
import com.uit.sharingvideo.map.VideoMap;

@Controller("NewsController")
@RequestMapping(value = "/news")
public class NewsController {
	@Autowired
	VideoMap videoMap;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView news() { 
		List<Video> topVideoList = videoMap.getTopVideoByCatalog(2, 2, "NumLike");
		List<Video> newestVideoList = videoMap.getTopVideoByCatalog(2, 1, "DateCreate");
		List<Video> popuVideoList = videoMap.getTopVideoByCatalog(2, 10, "NumView");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("topVideoList", topVideoList);
		map.put("newestVideoList", newestVideoList);
		map.put("popuVideoList", popuVideoList);
		
		return new ModelAndView("news/news", "map", map); 
	}
}
