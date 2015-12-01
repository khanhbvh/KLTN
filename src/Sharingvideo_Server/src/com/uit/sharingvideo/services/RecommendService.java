package com.uit.sharingvideo.services;

import java.util.List;

public interface RecommendService {
	public List<Integer> getRecommendList(int custId, int noOfRecommendations);
}
