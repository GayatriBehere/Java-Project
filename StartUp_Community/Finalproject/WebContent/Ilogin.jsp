<!--
	This is my page of  Investor 
	
	1)view product Idea >>>>img.jsp
	2)Search product >>>search.jsp
-->

<%@ page import="com.company.User_info2" %>
<%@ page import="com.company.Company" %>
<%@ page import="com.r3sys.DbConnection" %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
        
          <span class="nav-item">Investor</span>
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
    
    String email=request.getParameter("email");
       User_info2.get4(email);   		  
    %>

    <section class="main">
      

      <section class="main-course">
        <h1 class="title-agile text-center">Startup Community</h1>
    <div class="content-w3ls">
        <div class="agileits-grid">
            <div class="">
                <center>
					<p>We believe that a thriving community is a company’s most valuable asset,” Community-led writes in its Declaration. “Community scales your business, resources and presence in ways that traditional marketing or advertising channels can’t. When done right, community enables and improves customer acquisition, streamlines support and success, bolsters retention, and provides crucial product insights. Community is the beating heart of the business that keeps the rest of the team running.”</p> 
					<!-- //content bottom -->
            </div>
            <!-- //content bottom -->
        </div>
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