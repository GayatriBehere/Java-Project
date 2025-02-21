package com.investor;

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
 * Servlet implementation class Investor
 */
public class Investor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Investor() {
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
		try{
			String name=request.getParameter("name");
        	int num=Integer.parseInt(request.getParameter("number"));
        	String city=request.getParameter("city");
        	String address=request.getParameter("address");
        	String email=request.getParameter("email");
        	String pass=request.getParameter("password");
        	String status="not approved";
        	
        	PreparedStatement stmt=con.prepareStatement("insert into investor values(?,?,?,?,?,?,?)");
        	stmt.setString(1,name);
        	stmt.setInt(2,num);
        	stmt.setString(3,city);
        	stmt.setString(4,address);
        	stmt.setString(5,email);
        	stmt.setString(6,pass);
        	stmt.setString(7,status);
        	
        	
        	User_info.get(name, num, city, address, email, pass,status);
        	int i=stmt.executeUpdate();
    		if(i>0){
    			response.sendRedirect("w2.jsp");
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
