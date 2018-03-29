package com.fiveoclock.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet({ "/HelloWorld", "/hello" })
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        
        Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;	
    	String query = "";
    	String msg = "";
    	
    	try {
	    	Class.forName("com.mysql.jdbc.Driver").newInstance();
		    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sosim13p","sosim13p","rlaworud1@");
	
			
			query = "select DATE_FORMAT(updateDate,'%Y-%m-%d %H:%i:%s') as updateDate from oneminute where no = 1 ";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if ( rs.next()){
				msg = rs.getString("updateDate");
			}
    	} catch (Exception e) {				
    		//close error
    		out.println("[etax] procProductList Error : " + e.toString());	
    	} finally {		
    		if ( rs != null )
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    		if ( pstmt != null )
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    		if ( conn != null )
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    	}
    	
        out.println(msg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
