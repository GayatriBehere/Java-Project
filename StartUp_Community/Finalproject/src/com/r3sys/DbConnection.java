package com.r3sys;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection connect()
{
	Connection con=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");//register driver class
	System.out.println("driver loaded");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","");//create connection
	System.out.println("Connection Enstablissed");
	}
	catch(ClassNotFoundException e){
		e.printStackTrace();
		
	}
	catch(SQLException e){
		e.printStackTrace();
		
	}
	
	

 return(con);
}
}

