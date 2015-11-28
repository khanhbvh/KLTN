package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.uit.sharingvideo.domain.Video;

public class VideoRowMapper implements RowMapper<Video>{

	@Override
	public Video mapRow(ResultSet resultSet, int line) throws SQLException {
		VideoExtractor videoExtractor = new VideoExtractor();
		return videoExtractor.extractData(resultSet);
	}

}
