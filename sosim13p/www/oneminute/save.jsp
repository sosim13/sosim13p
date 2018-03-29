<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%

	String name101 = request.getParameter("name101");
	String name102 = request.getParameter("name102");
	String name201 = request.getParameter("name201");
	String name202 = request.getParameter("name202");
	String name203 = request.getParameter("name203");
	String name301 = request.getParameter("name301");
	String name302 = request.getParameter("name302");
	String name303 = request.getParameter("name303");
	String cleanMsg = request.getParameter("cleanMsg");
	String morningMsg = request.getParameter("morningMsg");
	String noticeMsg = request.getParameter("noticeMsg");
	name101 = new String(name101.getBytes("8859_1"),"UTF-8" );
	name102 = new String(name102.getBytes("8859_1"),"UTF-8" );
	name201 = new String(name201.getBytes("8859_1"),"UTF-8" );
	name202 = new String(name202.getBytes("8859_1"),"UTF-8" );
	name203 = new String(name203.getBytes("8859_1"),"UTF-8" );
	name301 = new String(name301.getBytes("8859_1"),"UTF-8" );
	name302 = new String(name302.getBytes("8859_1"),"UTF-8" );
	name303 = new String(name303.getBytes("8859_1"),"UTF-8" );
	cleanMsg = new String(cleanMsg.getBytes("8859_1"),"UTF-8" );
	morningMsg = new String(morningMsg.getBytes("8859_1"),"UTF-8" );
	noticeMsg = new String(noticeMsg.getBytes("8859_1"),"UTF-8" );

/*
		String charset[] = {"KSC5601","8859_1", "ascii", "UTF-8", "EUC-KR", "MS949"};

		for(int i=0; i<charset.length ; i++){
			for(int j=0 ; j<charset.length ; j++){
				if(i==j){ continue;}
				else{
					System.out.println(i+ ": >>>  "+charset[i]+" :-- "+charset[j]+" --:" +new String (cleanMsg.getBytes(charset[i]),charset[j]));
				}
			}
		}
*/
	Connection conn = null;	
    PreparedStatement pstmt	= null;
	ResultSet rs = null;
	String query = "";
	int result = 0;
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sosim13p","sosim13p","rlaworud1@");
		
		query = "update oneminute set name101=?,name102=?,name201=?,name202=?,name203=?,name301=?,name302=?,name303=?,cleanMsg=?,morningMsg=?,noticeMsg=?,updateDate=now() where no = 1; ";

		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, name101);
		pstmt.setString(2, name102);
		pstmt.setString(3, name201);
		pstmt.setString(4, name202);
		pstmt.setString(5, name203);
		pstmt.setString(6, name301);
		pstmt.setString(7, name302);
		pstmt.setString(8, name303);
		pstmt.setString(9, cleanMsg);
		pstmt.setString(10, morningMsg);
		pstmt.setString(11, noticeMsg);
		result = pstmt.executeUpdate();
%>
<script>
	alert("등록완료");
	location.href="index.jsp"
</script>
<%

	} catch (Exception e) {
		
		//close error
		System.out.println("[sosim13p] /check/token.jsp Error : " + e.toString());
	 }  finally {
		if ( rs != null ) rs.close();
		if ( pstmt != null ) pstmt.close();
		if ( conn != null ) conn.close();
	}
%>