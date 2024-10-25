package com.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbutil {
	    public static Connection getConnection() throws SQLException {
	        String url = "jdbc:postgresql://localhost:5432/user_management";
	        String username = "naga";
	        String password = "naga";
	        return DriverManager.getConnection(url, username, password);
	    }
	}



