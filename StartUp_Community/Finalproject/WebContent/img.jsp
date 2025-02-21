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
    .wthree-field input[type="submit"] {
    background: #8757ec;
    width: 400px;
    border: none;
    color: #fff;
    padding: 12px 15px;
    border-radius: 20px;
    text-transform: uppercase;
    font-size: 16px;
    font-weight: 600;
    font-family: 'Mukta Mahee', sans-serif;
    cursor: pointer;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
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
    String n="cool";
  Connection con=DbConnection.connect();
  PreparedStatement pstmt=con.prepareStatement("select * from product ");

  ResultSet rs=pstmt.executeQuery();
  
  
  %>

    <section class="main">
      

      <section class="main-course">
        <h1 class="title-agile text-center"></h1>
    <div class="content-w3ls">
        <div style="display:flex;justify-content:center;flex-wrap:wrap;'">
   <%
       while(rs.next()){
    	   Blob blob=rs.getBlob(6);
    	   byte[] byteArray=blob.getBytes(1,(int)blob.length());
    	   String base64Image=javax.xml.bind.DatatypeConverter.printBase64Binary(byteArray);
    	   String imageUrl="data:image/jpeg;base64,"+base64Image;
       
   
   
   
   %>
  
   <div style="margin:30px;border:10px ;'">
   <a href="v2.jsp?p_name=<%=rs.getString(1)%>&company_name=<%=rs.getString(3)%>">
    <img src="<%=imageUrl%>" width="400" height="320" alt="Image from blob">
</a>

 
     <a href="Apply.jsp?Product_name=<%=rs.getString(1)%> ">
     <div class="wthree-field">
                        <input id="saveForm" name="saveForm" type="submit" value="Apply" />
                    </div>
                     </a>
</div>

    <%} %>

                 
        <div class="agileits-grid">
           
            <!-- //content bottom -->
        </div>
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
  </div>
 
</body>
</html>