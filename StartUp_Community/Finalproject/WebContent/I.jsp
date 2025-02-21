<!--
	This is my page of  Investor 
	
	Authentication logic
	
-->
<%@ page import="com.company.Company" %>
<%@ page import="com.company.User_info2" %>
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
   User_info2.get3(email);
   System.out.println(email);
 
   String pass=request.getParameter("password");
 
      Connection con=DbConnection.connect();
      PreparedStatement stmt=con.prepareStatement("select * from investor where Email_id=?");
  	stmt.setString(1,email);
  	ResultSet rs=stmt.executeQuery();
	while(rs.next()){

		b=rs.getString(5);
		  System.out.println(b);
		a=rs.getString(6);
		  System.out.println(a);
		c=rs.getString(7);
		  System.out.println(c);
	}
	if(pass.equals(a) && email.equals(b)){
		if(d.equals(c)){
		
		response.sendRedirect("Ilogin.jsp");
		}
		
	}
	else{
		response.sendRedirect("f2.jsp");
		
	}
      
  
  
  
  

	
  %>

</body>
</html>