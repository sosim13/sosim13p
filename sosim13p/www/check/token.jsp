<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%

	String token = request.getParameter("token");
	System.out.println(token);
	Connection conn = null;	
    PreparedStatement pstmt	= null;
	ResultSet rs = null;
	String query = "";
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sosim13p","sosim13p","rlaworud1@");
		
		query = "INSERT INTO users (Token) values ('"+token+"') ON DUPLICATE KEY UPDATE Token = '"+token+"' ";

		pstmt = conn.prepareStatement(query);
		pstmt.executeUpdate();

	} catch (Exception e) {
		
		//close error
		System.out.println("[sosim13p] /check/token.jsp Error : " + e.toString());
	 }  finally {
		if ( rs != null ) rs.close();
		if ( pstmt != null ) pstmt.close();
		if ( conn != null ) conn.close();
	}
%>