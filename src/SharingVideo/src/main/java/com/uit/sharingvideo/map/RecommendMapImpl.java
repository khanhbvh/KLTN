package com.uit.sharingvideo.map;

import java.util.List;

public class RecommendMapImpl implements RecommendMap{
	Connect con = new Connect();
	
	@Override
	public List<Integer> getRecommendList(int custId, int noOfRecommendations){
		return con.Connect_RecommendService().getRecommendList(custId, noOfRecommendations);
	}
}
