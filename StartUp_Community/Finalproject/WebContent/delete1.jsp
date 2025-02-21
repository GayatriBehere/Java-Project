<%@ page import="com.investor.User_info" %>
<%@ page import="com.investor.Investor" %>
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
   String name=request.getParameter("name");
  Connection con=DbConnection.connect();
  PreparedStatement pstmt=con.prepareStatement("delete from company where Name=?");
  pstmt.setString(1, name);
  int i=pstmt.executeUpdate();
	if(i>0){
		response.sendRedirect("AC.jsp");
	}
	else{
		response.sendRedirect("wait.html");
	}
  %>
</body>
</html>