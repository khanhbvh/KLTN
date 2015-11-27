package com.uit.sharingvideo.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.uit.sharingvideo.domain.Video;

public class VideoExtractor implements ResultSetExtractor<Video>{

	@Override
	public Video extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		Video video = new Video();
		
		video.setVideoId(resultSet.getInt("VideoId"));
		video.setTitle(resultSet.getString("Title"));
		video.setFilePath(resultSet.getString("FilePath"));
		video.setSize(resultSet.getInt("Size"));
		video.setDescription(resultSet.getString("Description"));
		video.setDateCreate(resultSet.getDate("DateCreate"));
		video.setNumView(resultSet.getInt("NumView"));
		video.setNumLike(resultSet.getInt("NumLike"));
		video.setNumShare(resultSet.getInt("NumShare"));
		video.setImg(resultSet.getString("Img"));
		
		return video;
	}

}
