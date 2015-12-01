package com.uit.sharingvideo.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;

public class RecommendDaoImpl implements RecommendDao {
	MySQLRecommender mySQLRecommender;

	public RecommendDaoImpl() {
		mySQLRecommender = new MySQLRecommender();
	}

	public List<Integer> getRecommendList(int custId, int noOfRecommendations) {
		List<Integer> resultList = new ArrayList<Integer>();

		Recommender recommender;
		try {
			recommender = mySQLRecommender.getRecommender();
			List<RecommendedItem> recommendations;
			recommendations = mySQLRecommender.getRecommendations(recommender, custId, noOfRecommendations);

			for (RecommendedItem recommendation : recommendations) {
				int bookId = (int) recommendation.getItemID();
				resultList.add(bookId);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resultList;
	}
}
