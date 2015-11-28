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

@Controller("ShowsController")
@RequestMapping(value = "/shows")
public class ShowsController {
	@Autowired
	VideoMap videoMap;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView shows() { 
		List<Video> popShowList = videoMap.getTopVideo("CategoryId", 4, 6, "NumView");
		List<Video> vietShowList = videoMap.getTopVideo("TypeId", 9, 6, "NumView");
		List<Video> usShowList = videoMap.getTopVideo("TypeId", 10, 6, "NumLike");
		List<Video> indiaShowList = videoMap.getTopVideo("TypeId", 12, 6, "NumView");
		List<Video> thaiShowList = videoMap.getTopVideo("TypeId", 13, 6, "NumView");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("popShowList", popShowList);
		map.put("vietShowList", vietShowList);
		map.put("usShowList", usShowList);
		map.put("indiaShowList", indiaShowList);
		map.put("thaiShowList", thaiShowList);
		
		return new ModelAndView("shows/shows", "map", map);
	}
}
