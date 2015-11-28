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

@Controller("MoviesController")
@RequestMapping(value = "/movies")
public class MoviesController {
	@Autowired
	VideoMap videoMap;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView movies() { 
		return new ModelAndView("movies/movies"); 
	}
	
	@RequestMapping(value="/vietnam", method=RequestMethod.GET)
	public ModelAndView vietnam()
	{
		List<Video> newestVideoList = videoMap.getTopVideo("TypeId", 9, 8, "DateCreate");
		List<Video> topViewVideoList = videoMap.getTopVideo("TypeId", 9, 8, "NumView");
		List<Video> likeVideoList = videoMap.getTopVideo("TypeId", 9, 8, "NumLike");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newestVideoList", newestVideoList);
		map.put("topViewVideoList", topViewVideoList);
		map.put("likeVideoList", likeVideoList);
		
		return new ModelAndView("movies/vietnam", "map", map); 
	}
	
}
