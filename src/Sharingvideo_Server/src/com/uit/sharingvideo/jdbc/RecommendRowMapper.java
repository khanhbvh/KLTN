package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.uit.sharingvideo.domain.Recommend;

public class RecommendRowMapper implements RowMapper<Recommend>{
	@Override
	public Recommend mapRow(ResultSet resultSet, int line) throws SQLException {
		RecommendExtractor recommendExtractor = new RecommendExtractor();
		return recommendExtractor.extractData(resultSet);
	}
}
