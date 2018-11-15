package com.forpet;

import java.sql.Connection;
import java.sql.DriverManager;

public class Test {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	
	private static final String URL = "jdbc:mysql://192.168.50.37:3306/forpet?useSSL=false&serverTimezone=Asia/Seoul";
	
	private static final String USER = "forpet";
	
	private static final String PWD = "forpet";

	@org.junit.Test
	public void testConn() throws Exception {
		Class.forName(DRIVER);
		
		try {
			Connection con = DriverManager.getConnection(URL, USER, PWD);
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

