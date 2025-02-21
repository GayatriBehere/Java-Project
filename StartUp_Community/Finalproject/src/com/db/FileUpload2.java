package com.db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.company.User_info2;
import com.r3sys.DbConnection;
@MultipartConfig(maxFileSize=16177215)
/**
 * Servlet implementation class FileUpload2
 */
public class FileUpload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUpload2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 
		String     message = null;
	      Connection con=null;
	      String f="none";
	    con=DbConnection.connect();
	      String n=null;
	      String d="Not applied";
	      String e=User_info2.setemail2();
			String pname=request.getParameter("pname");
			String desc=request.getParameter("desc");
			String cat=request.getParameter("category");
			int FA=Integer.parseInt(request.getParameter("FA"));
			
			
	         
	        InputStream inputStream = null; // input stream of the upload file
	         
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("File");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	         
	        
	         
	        try {
	            // connects to the database
	         
	      
	 
	            // constructs SQL statement
	        	PreparedStatement pstmt=con.prepareStatement("select * from company where email=?");
	        	pstmt.setString(1,e);
	        	 ResultSet rs2=pstmt.executeQuery();
	        	 while(rs2.next())
	        	 {
	        		 n=rs2.getString(1);
	        		 
	        	 }
	            String sql = "INSERT INTO product values (?, ?, ?, ?, ?, ? )";
	            PreparedStatement stmt = con.prepareStatement(sql);
	            stmt.setString(1,pname);
	        	stmt.setString(2,desc);
	        	stmt.setString(3,n);
	        	stmt.setInt(4,FA);
	        	stmt.setString(5,cat);
	        	
	        	if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
	                stmt.setBlob(6, inputStream);
	            }
	 
	            // sends the statement to the database server
	            int row = stmt.executeUpdate();
	            if (row > 0) {
	               message = "File uploaded and saved into database";
	            }
	            PreparedStatement pstmt2=con.prepareStatement("insert into apply values(?,?,?,?,?,?,?)");
	        	  pstmt2.setString(1, pname);
	        	  pstmt2.setString(2, desc);
	        	  pstmt2.setString(3, n);
	        	  pstmt2.setInt(4, FA);
	        	  pstmt2.setString(5, cat);
	        	  pstmt2.setString(6, d);
	        	  pstmt2.setString(7, f);
	        	  int ro = pstmt2.executeUpdate();
		            if (ro > 0) {
		               message = "File uploaded and saved into database";
		            }
	        	
	        } catch (SQLException ex) {
	        		message = "ERROR: " + ex.getMessage();
	            ex.printStackTrace();
	        } finally {
	            if (con != null) {
	                // closes the database connection
	                try {
	                    con.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
	            }
	            // sets the message in request scope
	            request.setAttribute("Message", message);
	             
	            // forwards to the message page
	            getServletContext().getRequestDispatcher("/s4.jsp").forward(request, response);
	        }
	    }
	}


