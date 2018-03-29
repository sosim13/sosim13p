 <%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.google.android.gcm.server.*"%>
 
<%
    ArrayList<String> token = new ArrayList<String>();    //token값을 ArrayList에 저장
    String MESSAGE_ID = String.valueOf(Math.random() % 100 + 1);    //메시지 고유 ID
    boolean SHOW_ON_IDLE = false;    //옙 활성화 상태일때 보여줄것인지
    int LIVE_TIME = 1;    //옙 비활성화 상태일때 FCM가 메시지를 유효화하는 시간입니다.
    int RETRY = 2;    //메시지 전송에 실패할 시 재시도 횟수입니다.
 
    
    String simpleApiKey = "AIzaSyAzKHon8V8ksMbtuQVCvAjo74qkGd-QBW0";
    String gcmURL = "https://android.googleapis.com/fcm/send";    
    Connection conn = null; 
    PreparedStatement stmt = null; 
    ResultSet rs = null;

	String msg = request.getParameter("message");;
    
    if(msg==null || msg.equals("")){
        msg="";
    }

//    	String jdbcUrl = "jdbc:mysql://localhost:3306/sosim13p"; // MySQL 계정
//    	String dbId = "sosim13p"; // MySQL 계정
//    	String dbPw = "rlaworud1@"; // 비밀번호        
//        String sql = "select token from users"; // 등록된 token을 찾아오도록 하는 sql문
	
	try {
        String jdbcUrl = "jdbc:mysql://localhost:3306/sosim13p"; // MySQL 계정
    	String dbId = "sosim13p"; // MySQL 계정
    	String dbPw = "rlaworud1@"; // 비밀번호        
        String sql = "select token from users"; // 등록된 token을 찾아오도록 하는 sql문
	
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
        stmt = conn.prepareStatement(sql);    
        rs = stmt.executeQuery();
        
        //모든 등록ID를 리스트로 묶음
        while(rs.next()){
            token.add(rs.getString("token"));
        }
        conn.close();
        
        Sender sender = new Sender(simpleApiKey);
        Message message = new Message.Builder()
        .collapseKey(MESSAGE_ID)
        .delayWhileIdle(SHOW_ON_IDLE)
        .timeToLive(LIVE_TIME)
        .addData("message",msg)
        .build();
        MulticastResult result1 = sender.send(message,token,RETRY);
        if (result1 != null) {
            List<Result> resultList = result1.getResults();
            for (Result result : resultList) {
                System.out.println(result.getErrorCodeName()); 
            }
        }
     }catch (Exception e) {
        e.printStackTrace();
	 }  finally {
		if ( rs != null ) rs.close();
		if ( stmt != null ) stmt.close();
		if ( conn != null ) conn.close();
    }
%>