package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.uit.sharingvideo.domain.Recommend;

public class RecommendExtractor implements ResultSetExtractor<Recommend>{

	@Override
	public Recommend extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		Recommend recommend = new Recommend();
		
		recommend.setUserId(resultSet.getInt("UserId"));
		recommend.setVideoId(resultSet.getInt("VideoId"));
		recommend.setRating(resultSet.getFloat("Rating"));
		
		return null;
	}

}
