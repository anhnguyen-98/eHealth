package com.ehealth.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	static Connection conn = null;
	//static String username="zg2z8ibtc3fm70we";
	//static String pwd="xg1j15tp01srdp6x";
	//static String connectionUrl = "jdbc:mysql://root:tuananh123@localhost:3306/loginDB";
	static String connectionUrl1 = "jdbc:mysql://k5im8ac4qc2cf8tl:fo61xy6kicdhslrq@td5l74lo6615qq42.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/d7gyazqpp9xujbrs";
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//conn = DriverManager.getConnection(connectionUrl,username,pwd);
			conn = DriverManager.getConnection(connectionUrl1);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
