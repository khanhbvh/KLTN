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

@Controller("SongsController")
@RequestMapping(value = "/songs")
public class SongsController {
	@Autowired
	VideoMap videoMap;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView songs() { 
		List<Video> newestVideoList = videoMap.getTopVideo("CategoryId", 9, 6, "DateCreate");
		List<Video> popVideoList = videoMap.getTopVideo("TypeId", 28, 6, "NumLike");
		List<Video> hiphopVideoList = videoMap.getTopVideo("TypeId", 29, 6, "NumView");
		List<Video> jazzVideoList = videoMap.getTopVideo("TypeId", 30, 6, "NumView");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newestVideoList", newestVideoList);
		map.put("popVideoList", popVideoList);
		map.put("hiphopVideoList", hiphopVideoList);
		map.put("jazzVideoList", jazzVideoList);
		
		return new ModelAndView("songs/songs","map", map);
	}
}
