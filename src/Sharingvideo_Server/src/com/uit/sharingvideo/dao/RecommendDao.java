package com.uit.sharingvideo.dao;

import java.util.List;

public interface RecommendDao {
	public List<Integer> getRecommendList(int custId, int noOfRecommendations);
}
