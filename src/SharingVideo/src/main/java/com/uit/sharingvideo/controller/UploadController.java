package com.uit.sharingvideo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.uit.sharingvideo.map.UploadMap;

@Controller("UploadController")
@RequestMapping(value = "/upload")
public class UploadController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	UploadMap uploadMap;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public ModelAndView upload() { 
		return new ModelAndView("upload/upload"); 
	}
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public 	@ResponseBody String uploadFileHandler(
			@RequestParam("file") MultipartFile file) {

		if (!file.isEmpty()) {
			try {
				
				byte[] bytes = file.getBytes();
				String name  = file.getOriginalFilename();
				uploadMap.UploadVideo(bytes, name);
				String t = "Success Upload";
				
				return  t;

			} catch (Exception e) {
				return "You failed to upload " +file.getOriginalFilename() + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + file.getOriginalFilename()
					+ " because the file was empty.";
		}
	}
}
