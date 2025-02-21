<!--
	This is my page of Admin 
	
	The Login page
	(Authentication)
-->
<%@ page import="com.company.User_info2" %>
<%@ page import="com.company.Company" %>
<%@ page import="com.r3sys.DbConnection" %>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

    String a=null;
    String b=null;
    String c=null;
    String d="Approved";
   String email=request.getParameter("email");
   User_info2.get3(email);//this is the setter method 
   String pass=request.getParameter("password");
 
      Connection con=DbConnection.connect();
      PreparedStatement stmt=con.prepareStatement("select * from company where email=?");
  	stmt.setString(1,email);
  	ResultSet rs=stmt.executeQuery();
	while(rs.next()){
		a=rs.getString(3);//password
		b=rs.getString(2);//email
		c=rs.getString(9);//status of company
	}
	if(pass.equals(a) && email.equals(b)){
		if(d.equals(c)){
		
		response.sendRedirect("index2.html");
		}
		
	}
	else{
		response.sendRedirect("f2.html");
		
	}
      
  
  
  
  

	
  %>

</body>
</html>