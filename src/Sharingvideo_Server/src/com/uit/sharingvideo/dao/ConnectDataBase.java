package com.uit.sharingvideo.dao;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.SimpleDriverDataSource;

public class ConnectDataBase {
	public DataSource connect(){
		 SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
	     try {
			dataSource.setDriver(new com.mysql.jdbc.Driver());
		} catch (SQLException e) {
			System.out.println("Connect database fail");
			e.printStackTrace();
		}
	     dataSource.setUrl("jdbc:mysql://localhost:3306/sharingvideodb");
	     dataSource.setUsername("root");
	     dataSource.setPassword("1234");
	     System.out.println(dataSource);
	     return dataSource;
	}
}
