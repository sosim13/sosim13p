<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FCM Example</title>
</head>
<body>
<h2>Notification 보낼 내용 입력</h2>
 
<form action="pushPushBaebe.jsp" method="post">
    <textarea name="message" rows="4" cols="50" placeholder="메세지를 입력하세요"></textarea><br>
    <input type="submit" name="submit" value="Send" id="submitButton">
</form>
</body>
</html>