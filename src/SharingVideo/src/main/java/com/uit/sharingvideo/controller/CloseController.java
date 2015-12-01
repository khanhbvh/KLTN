package com.uit.sharingvideo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("CloseController")
@RequestMapping(value = "/close")
public class CloseController {
	@RequestMapping(value="/doActionBefClose", 
			method=RequestMethod.POST)
    public @ResponseBody 
    void Save(@RequestBody String params)
    {
		System.out.print("You can do anything here!\n");
    }
}
