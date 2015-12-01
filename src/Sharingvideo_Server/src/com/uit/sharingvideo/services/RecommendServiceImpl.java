package com.uit.sharingvideo.services;

import java.util.List;

import com.uit.sharingvideo.dao.RecommendDaoImpl;

public class RecommendServiceImpl implements RecommendService{
	RecommendDaoImpl recommenddao = new RecommendDaoImpl(); 
	
	@Override
	public List<Integer> getRecommendList(int custId, int noOfRecommendations){
		return recommenddao.getRecommendList(custId, noOfRecommendations);
	}
}
