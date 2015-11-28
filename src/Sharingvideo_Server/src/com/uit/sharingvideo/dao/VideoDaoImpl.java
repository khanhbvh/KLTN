package com.uit.sharingvideo.dao;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import com.uit.sharingvideo.domain.Video;
import com.uit.sharingvideo.jdbc.VideoRowMapper;

public class VideoDaoImpl implements VideoDao{
	DataSource dataSource;
	ConnectDataBase connect;
	
	public VideoDaoImpl() {
		connect = new ConnectDataBase();
		this.dataSource = connect.connect();
	}
	
	@Override
	public List<Video> getVideoListByCatalog(Integer catalogID) {
		// TODO Auto-generated method stub
		List<Video> videoList = new ArrayList<Video>();
		String sql = "select * from video where TypeId = " + catalogID;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		videoList = jdbcTemplate.query(sql, new VideoRowMapper());
		
		return videoList;
	}
	
	@Override
	public List<Video> getTopVideo(String colWhere, Integer catalogID, int top, String colOrder){
		List<Video> videoList = new ArrayList<Video>();
		
		String sql = "select * "
				+ "from video "
				+ "where " + colWhere + "= " + catalogID
				+ " ORDER BY " + colOrder 
				+ " DESC LIMIT " + top;
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		videoList = jdbcTemplate.query(sql, new VideoRowMapper());
		
		return videoList;
	}

	@Override
	public List<Video> getVideos(int startRecord, int numGet, String colOrder) {
		List<Video> videoList = new ArrayList<Video>();
		
		String sql = "select * "
				+ "from video "
				+ " ORDER BY " + colOrder 
				+ " DESC LIMIT " + startRecord + ", " + numGet;
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		videoList = jdbcTemplate.query(sql, new VideoRowMapper());
		
		return videoList;
	}
}
