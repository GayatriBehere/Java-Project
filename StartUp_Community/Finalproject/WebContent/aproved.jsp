<%@ page import="com.investor.User_info" %>
<%@ page import="com.investor.Investor" %>
<%@ page import="com.r3sys.DbConnection" %>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
	Authentication Logic
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
   String email=request.getParameter("email");
   String pass=request.getParameter("password");
 
      Connection con=DbConnection.connect();
      String e="Gayatri@2001";
      String p="123";
  
  
  
  
  

	if(e.equals(email) && p.equals(pass)){
		 
		response.sendRedirect("index.html");
	}
	else{
		response.sendRedirect("wait.html");
	}
  %>

</body>
</html>