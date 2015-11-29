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

@Controller("SportsController")
@RequestMapping(value = "/sports")
public class SportsController {
	@Autowired
	VideoMap videoMap;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView sports() { 
		return new ModelAndView("sports/sports"); 
	}
	
	@RequestMapping(value="/football", method=RequestMethod.GET)
	public ModelAndView football()
	{
		Map<String, Object> map = new HashMap<String, Object>();
		map = sportsType(19);
		
		return new ModelAndView("sports/football", "map", map); 
	}
	
	@RequestMapping(value="/chess", method=RequestMethod.GET)
	public ModelAndView chess()
	{
		Map<String, Object> map = new HashMap<String, Object>();
		map = sportsType(1);
		
		return new ModelAndView("sports/chess", "map", map); 
	}
	
	@RequestMapping(value="/voleyball", method=RequestMethod.GET)
	public ModelAndView voleyball()
	{
		Map<String, Object> map = new HashMap<String, Object>();
		map = sportsType(1);
		
		return new ModelAndView("sports/voleyball", "map", map); 
	}
	
	@RequestMapping(value="/swimming", method=RequestMethod.GET)
	public ModelAndView swimming()
	{
		Map<String, Object> map = new HashMap<String, Object>();
		map = sportsType(1);
		
		return new ModelAndView("sports/swimming", "map", map); 
	}
	
	private Map<String, Object> sportsType(int id){
		Map<String, Object> map = new HashMap<String, Object>();
		
		// Mới nhất
		List<Video> sportVideoList1 = videoMap.getVideosByCol("TypeId", id, 0, 4, "DateCreate");
		List<Video> sportVideoList2 = videoMap.getVideosByCol("TypeId", id, 4, 4, "DateCreate");
		List<Video> sportVideoList3 = videoMap.getVideosByCol("TypeId", id, 8, 4, "DateCreate");
		List<Video> sportVideoList4 = videoMap.getVideosByCol("TypeId", id, 12, 4, "DateCreate");
		map.put("sportVideoList1", sportVideoList1);
		map.put("sportVideoList2", sportVideoList2);
		map.put("sportVideoList3", sportVideoList3);
		map.put("sportVideoList4", sportVideoList4);
		
		// Xem nhiều nhất
		List<Video> viewVideoList1 = videoMap.getVideosByCol("TypeId", id, 0, 4, "NumView");
		List<Video> viewVideoList2 = videoMap.getVideosByCol("TypeId", id, 4, 4, "NumView");
		List<Video> viewVideoList3 = videoMap.getVideosByCol("TypeId", id, 8, 4, "NumView");
		List<Video> viewVideoList4 = videoMap.getVideosByCol("TypeId", id, 12, 4, "NumView");
		map.put("viewVideoList1", viewVideoList1);
		map.put("viewVideoList2", viewVideoList2);
		map.put("viewVideoList3", viewVideoList3);
		map.put("viewVideoList4", viewVideoList4);
		
		
		// Phổ biến nhất
		List<Video> popuVideoList1 = videoMap.getVideosByCol("TypeId", id, 0, 4, "NumView");
		List<Video> popuVideoList2 = videoMap.getVideosByCol("TypeId", id, 4, 4, "NumView");
		List<Video> popuVideoList3 = videoMap.getVideosByCol("TypeId", id, 8, 4, "NumView");
		List<Video> popuVideoList4 = videoMap.getVideosByCol("TypeId", id, 12, 4, "NumView");
		map.put("popuVideoList1", popuVideoList1);
		map.put("popuVideoList2", popuVideoList2);
		map.put("popuVideoList3", popuVideoList3);
		map.put("popuVideoList4", popuVideoList4);
		
		return map;
	}
}
