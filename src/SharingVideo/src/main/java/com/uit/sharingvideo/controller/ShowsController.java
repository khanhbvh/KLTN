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
		List<Video> popShowList = videoMap.getTopVideo("CategoryId", 8, 6, "NumView");
		
		List<Video> vietShowList = videoMap.getTopVideoByCatCountry("CategoryId", 8, "CountryId", 1, 6, "NumView");
		List<Video> usShowList = videoMap.getTopVideoByCatCountry("CategoryId", 8, "CountryId", 2, 6, "NumView");
		List<Video> indiaShowList = videoMap.getTopVideoByCatCountry("CategoryId", 8, "CountryId", 4, 6, "NumView");
		List<Video> thaiShowList = videoMap.getTopVideoByCatCountry("CategoryId", 8, "CountryId", 5, 6, "NumView");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("popShowList", popShowList);
		map.put("vietShowList", vietShowList);
		map.put("usShowList", usShowList);
		map.put("indiaShowList", indiaShowList);
		map.put("thaiShowList", thaiShowList);
		
		return new ModelAndView("shows/shows", "map", map);
	}
}
