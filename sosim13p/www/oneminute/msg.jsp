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
	int type = 0;
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sosim13p","sosim13p","rlaworud1@");

		
		query = "select name101, name102, name201, name202, name203, name301, name302, name303, cleanMsg, morningMsg, noticeMsg, DATE_FORMAT(now(),'%H') as hour from oneminute where no = 1 ";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();


%>
<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=ks_c_5531-1987">
<meta name=Generator content="Microsoft Word 12 (filtered)">

</head>

<body lang=KO>
<%			
		if(rs != null) {
			while(rs.next()) {
if("".equals(rs.getString("noticeMsg"))) {
				if(Integer.parseInt(rs.getString("hour")) >= 6 && Integer.parseInt(rs.getString("hour")) < 11){
					type = 1;
				}else if(Integer.parseInt(rs.getString("hour")) >= 11 && Integer.parseInt(rs.getString("hour")) < 15){
					type = 2;
				}else{
					type = 0;
				}
%>
<p class=MsoNormal align=center style='text-align:center'><b><span lang=EN-US
style='font-size:100.0pt;font-family:"Impact","serif";'>BOOKING</span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b><span lang=EN-US
style='font-size:100.0pt;font-family:"Impact","serif"'>information</span></b></p>

<p class=MsoNormal align=center style='text-align:center'><b><span lang=EN-US
style='font-size:55.0pt'>[</span></b><b><span style='font-size:60.0pt'>예약정보<span
lang=EN-US>]</span></span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:20.0pt'>&nbsp;</span></p>
<%

				if(type == 1){
%> 
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'><%=rs.getString("morningMsg")%></span></b></p>
			<%}else if(type == 2){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'><%=rs.getString("cleanMsg")%></span></b></p>
			<%}else{%>
<% if(!"".equals(rs.getString("name101"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 101 </span><span style='font-size:53.0pt'><%=rs.getString("name101")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name102"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 102 </span><span style='font-size:53.0pt'><%=rs.getString("name102")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name201"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 201 </span><span style='font-size:53.0pt'><%=rs.getString("name201")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name202"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 202 </span><span style='font-size:53.0pt'><%=rs.getString("name202")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name203"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 203 </span><span style='font-size:53.0pt'><%=rs.getString("name203")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name301"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 301 </span><span style='font-size:53.0pt'><%=rs.getString("name301")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name302"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 302 </span><span style='font-size:53.0pt'><%=rs.getString("name302")%></span></b></p>
<%}%>
<% if(!"".equals(rs.getString("name303"))){%>
<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Room No. 303 </span><span style='font-size:53.0pt'><%=rs.getString("name303")%></span></b></p>
<%}%>
<%	  	
				}	// if else
}else{
%>

<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'><%=rs.getString("noticeMsg")%></span></b></p>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%
}		
			}	// while

		}	// rs
%> 
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