<%@ page import="com.investor.User_info" %>
<%@ page import="com.investor.Investor" %>
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
Connection con=DbConnection.connect();
   String name=request.getParameter("Product_name");
   System.out.println("product"+name);
    String cname=null;
   String apply="Applied";
   String e=User_info2.setemail2();
   System.out.println(e);
   PreparedStatement pstmt3=con.prepareStatement("select * from investor where Email_id=?");
   pstmt3.setString(1,e);
   System.out.println(e);
   ResultSet rs3=pstmt3.executeQuery();
   while(rs3.next()){
	   cname=rs3.getString(1);
	   System.out.println(cname);
	   
   }
  PreparedStatement pstmt=con.prepareStatement("update apply set Apply=?,Invester_name=? where Product_name=?");
   pstmt.setString(1,apply);
   pstmt.setString(2, cname);
   pstmt.setString(3, name);
  int i=pstmt.executeUpdate();
	if(i>0){
	
		response.sendRedirect("s3.jsp");
	}
	else{
		response.sendRedirect("wait.html");
	}
	
	
  %>
</body>
</html>