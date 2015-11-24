package com.uit.sharingvideo.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.uit.sharingvideo.domain.Comment;
import com.uit.sharingvideo.jdbc.CommentRowMapper;

public class CommentDaoImpl implements CommentDao {
	DataSource dataSource;
	ConnectDataBase connect;
	public CommentDaoImpl() {
		connect = new ConnectDataBase();
		this.dataSource = connect.connect();
	}
	@Override
	public void insertData(Comment comment) {
		 
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		String sql = "INSERT INTO comment " + "(videoId, userId, content, created) VALUES (?, ?, ?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql, new Object[] { comment.getVideoId(), comment.getUserId(), comment.getContent(),
				dateFormat.format(date) });
	}

	@Override
	public List<Comment> getCommentList() {
		List<Comment> commentList = new ArrayList<Comment>();

		String sql = "select * from comment order by created desc";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		commentList = jdbcTemplate.query(sql, new CommentRowMapper());

		return commentList;
	}

}
