package com.company;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.User_info2;

import com.r3sys.DbConnection;

/**
 * Servlet implementation class Company
 */
public class Company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company() {
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
			String cname=request.getParameter("Cname");
			String pname=request.getParameter("name");

        	int pnum=Integer.parseInt(request.getParameter("phone"));
        	int cnum=Integer.parseInt(request.getParameter("c.contact"));

        	String city=request.getParameter("city");
        	String address=request.getParameter("address");
        	String email=request.getParameter("email");
        	String pass=request.getParameter("password");
        	String status="not approved";
        	
        	PreparedStatement stmt=con.prepareStatement("insert into company values(?,?,?,?,?,?,?,?,?)");
        	stmt.setString(1,cname);
        	stmt.setString(2,email);
        	stmt.setString(3,pass);
        	stmt.setInt(4,cnum);
        	stmt.setInt(5,pnum);
        	stmt.setString(6,pname);
        	stmt.setString(7,city);
        	stmt.setString(8,address);
        	stmt.setString(9,status);
        	
        	
        	
        	User_info2.get2(cname, email, pass, cnum, pnum, pname,city,address,status);
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
