package com.ehealth.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	static Connection conn = null;
	static String username="root";
	static String pwd="tuananh123";
	static String connectionUrl = "jdbc:mysql://localhost:3306/loginDB";
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(connectionUrl,username,pwd);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
	
}
