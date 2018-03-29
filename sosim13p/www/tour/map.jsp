<%@ page contentType="text/html;charset=euc-kr" %>
<%

	String contentTypeId = checkNull(request.getParameter("contentTypeId"));
	String areaCode = checkNull(request.getParameter("areaCode"));
	String sigunguCode = checkNull(request.getParameter("sigunguCode"));
	String contentId = checkNull(request.getParameter("contentId"));
	int pageNo = getIntParameter(request.getParameter("pageNo"), 1);
	int numOfRows = 5;		// 한페이지에 노출할 페이지수

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <TITLE>리스트</TITLE>
</head>

 <BODY>
 <center><h2>지도</h2>
 <div class="t3">
 <div id="map" style="width:98%;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50307dbdbb2f9da37245fe87ac7e5e3a"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(37.5899857439, 127.0280213987),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
	</script>
 </div>
	</center>
 </BODY>
</HTML>