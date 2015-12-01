package com.uit.sharingvideo.dao;

import java.util.List;

import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class MySQLRecommender {
	private final int NEIGHBOR_HOOD_SIZE = 5;
	private final String SERVER_NAME = "localhost";
	private final String USER_NAME = "root";
	private final String PASSWORD = "1234";
	private final String DATABASE = "sharingvideodb";

	public Recommender getRecommender() throws Exception {

		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setServerName("localhost");
		dataSource.setUser("root");
		dataSource.setPassword("1234");
		dataSource.setDatabaseName("sharingvideodb");

		DataModel model = new MySQLJDBCDataModel(dataSource, "recommend", "UserId", "VideoId", "Rating", null);

		/* Get Pearson correlation instance from given model */
		UserSimilarity similarity = new PearsonCorrelationSimilarity(model);

		/*
		 * Computes a neighborhood consisting of the nearest n users to a given
		 * user.
		 */
		UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, model);

		/* Get Recommender */
		Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);

		return recommender;
	}
	
	public List<RecommendedItem> getRecommendations(Recommender recommender, int custId, int noOfRecommendations)
			throws Exception {
		return recommender.recommend(custId, noOfRecommendations);
	}
}
