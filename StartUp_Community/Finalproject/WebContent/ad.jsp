<!--
	
	3)apllied investorlist who have applied or send request to company
	
-->
<%@ page import="com.company.User_info2" %>
<%@ page import="com.company.Company" %>
<%@ page import="com.r3sys.DbConnection" %>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <style>
    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    
    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 5px;
    }
    
    tr:nth-child(even) {
      background-color: #dddddd;
    }
    </style>
  <meta charset="UTF-8" />
  <title>Dashboard | By Code Info</title>
  <link rel="stylesheet" href="./style2.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>
<body>
	<div class="o"></div>
  <div class="container">
    <nav>
      <ul>
        <li><a href="#" class="logo"><br><br><br>
        
          <span class="nav-item">Company</span>
        </a></li>
        <li><a href="add.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">Add product Idea</span>
        </a></li>
        <li><a href="View.jsp">
          <i class="fas fa-user"></i>
          <span class="nav-item">View product</span>
        </a></li>
		
       
        <li><a href="ad.jsp">
          <i class="fas fa-tasks"></i>
          <span class="nav-item">Aplied Invester List</span>
        </a></li>
		
      </ul>
    </nav>
<% 
  String b=null;
  String d="Applied";//applied means not accepted by admin yet ...
  String e=User_info2.setemail2();
  Connection con=DbConnection.connect();
  PreparedStatement pstmt=con.prepareStatement("select * from company where email=? ");
  pstmt.setString(1,e);
  ResultSet rs=pstmt.executeQuery();
  while(rs.next()){
	  b=rs.getString(1);//extract company name 
  }
  PreparedStatement pstmt2=con.prepareStatement("select * from apply where Company_name=? and Apply=?" );
  pstmt2.setString(1,b);
  pstmt2.setString(2,d);
  ResultSet rs2=pstmt2.executeQuery();
  
  
  %>
    <section class="main">
      

      <section class="main-course">
        <h1 class="title-agile text-center"></h1>
    <div class="content-w3ls">
      <table>
        <tr>
        <th>Investor_name</th>
          <th>Product_name</th>
          <th>Description</th>
          <th>Company name</th>
          <th>Funding Amount</th>
          <th>Catagory</th>
           <th>Update</th>
          

          
    
        </tr>
       <%while(rs2.next()){ %>
  <tr>
   <td><%= rs2.getString(7) %></td>
    <td><%= rs2.getString(1) %></td>   
    <td><%= rs2.getString(2) %></td>
    <td><%= rs2.getString(3) %></td>
    <td><%= rs2.getInt(4) %></td>
    <td><%= rs2.getString(5) %></td>
 
  <td><a href="ap.jsp?name=<%=rs2.getString(1)%>">Accept</a></td>
    
  </tr>
  <%} %>

                  </table>
    </div>
    <div class="copyright text-center">
        
    </div>
    <!--//copyright-->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- script for show password -->
    <script>
        $(".toggle-password").click(function () {

            $(this).toggleClass("fa-eye fa-eye-slash");
            var input = $($(this).attr("toggle"));
            if (input.attr("type") == "password") {
                input.attr("type", "text");
            } else {
                input.attr("type", "password");
            }
        });
    </script>
    <!-- /script for show password -->

      </section>
    </section>
  </div>
</body>
</html>