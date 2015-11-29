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
		Map<String, Object> map = new HashMap<String, Object>();
		
		// Danh sách các video mới nhất
		List<Video> recentVideoList = videoMap.getVideos(0, 6, "DateCreate");
		map.put("recentVideoList", recentVideoList);
		
		// Danh sách các video được xem nhiều nhất
		List<Video> viewMostVideoList1 = videoMap.getVideos(0, 4, "NumView");
		List<Video> viewMostVideoList2 = videoMap.getVideos(4, 4, "NumView");
		List<Video> viewMostVideoList3 = videoMap.getVideos(8, 4, "NumView");
		List<Video> viewMostVideoList4 = videoMap.getVideos(12, 4, "NumView");
		map.put("viewMostVideoList1", viewMostVideoList1);
		map.put("viewMostVideoList2", viewMostVideoList2);
		map.put("viewMostVideoList3", viewMostVideoList3);
		map.put("viewMostVideoList4", viewMostVideoList4);
		
		// Danh sách các video Việt Nam
		List<Video> vietVideoList1 = videoMap.getVideosByCol("CountryId", 1, 0, 4, "NumView");
		List<Video> vietVideoList2 = videoMap.getVideosByCol("CountryId", 1, 4, 4, "NumView");
		List<Video> vietVideoList3 = videoMap.getVideosByCol("CountryId", 1, 8, 4, "NumView");
		List<Video> vietVideoList4 = videoMap.getVideosByCol("CountryId", 1, 12, 4, "NumView");
		map.put("vietVideoList1", vietVideoList1);
		map.put("vietVideoList2", vietVideoList2);
		map.put("vietVideoList3", vietVideoList3);
		map.put("vietVideoList4", vietVideoList4);
		
		// Danh sách các video Thể Thao
		List<Video> sportVideoList1 = videoMap.getVideosByCol("CategoryId", 6, 0, 4, "NumLike");
		List<Video> sportVideoList2 = videoMap.getVideosByCol("CategoryId", 6, 4, 4, "NumLike");
		map.put("sportVideoList1", sportVideoList1);
		map.put("sportVideoList2", sportVideoList2);
		
		
		return new ModelAndView("home/home", "map", map);
	}
}
