<%@ page import="com.investor.User_info" %>
<%@ page import="com.investor.Investor" %>
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
        
          <span class="nav-item">Invester</span>
        </a></li>
        <li><a href="img.jsp">
          <i class="fas fa-home"></i>
          <span class="nav-item">view product Idea</span>
        </a></li>
        <li><a href="search.jsp">
          <i class="fas fa-user"></i>
          <span class="nav-item">Search product</span>
        </a></li>
		
        
		
      </ul>
    </nav>
<% 
   String s=request.getParameter("s");
   
  Connection con=DbConnection.connect();
 
  PreparedStatement pstmt3=con.prepareStatement("select * from apply where catagory=?");
  pstmt3.setString(1, s);
  ResultSet rs2=pstmt3.executeQuery();
  
  %>
    <section class="main">
      

      <section class="main-course">
        <h1 class="title-agile text-center"></h1>
    <div class="content-w3ls">
      <table>
        <tr>
          <th>Product_name</th>
          <th>Description</th>
          <th>Company name</th>
          <th>Funding Amount</th>
          <th>Catagory</th>
          <th>Apply</th>
          <th>Update</th>
     
          
    
        </tr>
       <%while(rs2.next()){ %>
  <tr>
    <td><%= rs2.getString(1) %></td>   
    <td><%= rs2.getString(2) %></td>
    <td><%= rs2.getString(3) %></td>
    <td><%= rs2.getInt(4) %></td>
    <td><%= rs2.getString(5) %></td>
    <td><%= rs2.getString(6) %></td>
    <td><a href="Apply.jsp?Product_name=<%=rs2.getString(1)%>">apply</a></td>
    
    
    
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