package com.uit.sharingvideo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uit.sharingvideo.map.LinkMpdMap;

@Controller("CloseController")
@RequestMapping(value = "/close")

public class CloseController {
	@Autowired
    LinkMpdMap linkMpdMap;
	@RequestMapping(value="/doActionBefCloseWatch", 
			method=RequestMethod.POST)
    public @ResponseBody 
    void doActionBefCloseWatch(@RequestBody String params)
    {
		linkMpdMap.Update_Idle_Server(params);
    }
}
