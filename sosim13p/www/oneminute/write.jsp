<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Date.*" %>
<%@ page import="java.util.Calendar" %>
<%

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	

	String query = "";
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sosim13p","sosim13p","rlaworud1@");

		
		query = "select name101, name102, name201, name202, name203, name301, name302, name303, cleanMsg, morningMsg, noticeMsg from oneminute where no = 1 ";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FCM Example</title>
<script>
	function Notice(msg){
		document.form1.noticeMsg.value = msg;	
		submitButton.click();
	}
</script>
</head>
<body>
<h2>OneMinute</h2>
 
<form name="form1" id="form1" action="save.jsp" method="post">
<%			
		if(rs != null) {
			while(rs.next()) {
%> 
	예약자정보<br />
    101 : <input type="text" name="name101" value="<%= rs.getString("name101") %>" /><br>
    102 : <input type="text" name="name102" value="<%= rs.getString("name102") %>" /><br>
    201 : <input type="text" name="name201" value="<%= rs.getString("name201") %>" /><br>
    202 : <input type="text" name="name202" value="<%= rs.getString("name202") %>" /><br>
	203 : <input type="text" name="name203" value="<%= rs.getString("name203") %>" /><br>
    301 : <input type="text" name="name301" value="<%= rs.getString("name301") %>" /><br>
    302 : <input type="text" name="name302" value="<%= rs.getString("name302") %>" /><br>
	303 : <input type="text" name="name303" value="<%= rs.getString("name303") %>" /><br>
	청소 : <input type="text" name="cleanMsg" value="<%= rs.getString("cleanMsg") %>" /><br>
	조식 : <input type="text" name="morningMsg" value="<%= rs.getString("morningMsg") %>" /><br>
	공지 : <input type="text" name="noticeMsg" value="<%= rs.getString("noticeMsg") %>" /> <a href="#" onclick="Notice('')"><font size="1">[삭제]</font></a><br><br>
    <input type="submit" name="submit" value="Send" id="submitButton">
<%	  	
		
			}
		}
%>  
</form>
</body>
</html>
<%	  	
		
	} catch (Exception e) {				
		//close error
		out.println("[etax] procProductList Error : " + e.toString());	
	} finally {		
		if ( rs != null ) rs.close();
		if ( pstmt != null ) pstmt.close();
		if ( conn != null ) conn.close();
	}
		
%>