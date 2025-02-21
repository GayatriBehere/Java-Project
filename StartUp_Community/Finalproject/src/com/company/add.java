 package com.company;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.DbConnection;

/**
 * Servlet implementation class add
 */
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection con=DbConnection.connect();
		String n=null;
		 String d="Not applied";
		try{
			
			String e=User_info2.setemail2();
			String pname=request.getParameter("pname");
			String desc=request.getParameter("desc");
			String cat=request.getParameter("category");
			int FA=Integer.parseInt(request.getParameter("FA"));

        

			PreparedStatement pstmt=con.prepareStatement("select * from company where email=?");
        	pstmt.setString(1,e);
        	 ResultSet rs2=pstmt.executeQuery();
        	 while(rs2.next())
         	 {
        		 n=rs2.getString(1);
        		 
        	 }
        	
        	PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
        	stmt.setString(1,pname);
        	stmt.setString(2,desc);
        	stmt.setString(3,n);
        	stmt.setInt(4,FA);
        	stmt.setString(5,cat);
        	int i=stmt.executeUpdate();
        	
        	PreparedStatement pstmt2=con.prepareStatement("insert into apply values(?,?,?,?,?,?)");
        	  pstmt2.setString(1, pname);
        	  pstmt2.setString(2, desc);
        	  pstmt2.setString(3, n);
        	  pstmt2.setInt(4, FA);
        	  pstmt2.setString(5, cat);
        	  pstmt2.setString(6, d);
        	  int k=pstmt2.executeUpdate();
        	
        	
        	

        
    		if(i>0){
    			response.sendRedirect("wait.html");
    		}
    		else{
    			response.sendRedirect("fail.html");
    		}
        }
        catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
