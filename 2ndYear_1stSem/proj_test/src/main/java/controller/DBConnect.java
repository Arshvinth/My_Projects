package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		String host 	= "localhost";
		String instance	= "DESKTOP-61J0LEI\\SQLEXPRESS01";
		String database	= "Custom";
		String uname 	= "sa";
		String pas 		= "2sql4";
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		String url = "jdbc:sqlserver://" + host + ":1433;" + "instance=" + instance + ";databaseName=" + database;
		
		Connection con = DriverManager.getConnection(url,uname,pas);
		
		//create
		Statement st = con.createStatement();
		System.out.println("Connected to database!");
		
		return con;
	}
}
