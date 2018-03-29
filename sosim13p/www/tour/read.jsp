<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.fiveoclock.util.*" %>
<%!
		// ���޵� Req���� null �̳� "" �̸� 0 ���� ��ȯ�ϰ� �׷�ġ �ʴٸ� Integer�� ����ȯ�ؼ� ��ȯ��.
	public int getIntParameter(String Req ) {
		try {
			if (Req == null || Req.equals(""))
				return 0;
			else
				return Integer.parseInt(Req.toString());
		} catch (NumberFormatException e) {
			return 0;
		}
	}

	// ���޵� Req���� null �̳� "" �̸� ifNulltoReplace ���� ��ȯ�ϰ� �׷�ġ �ʴٸ� Integer�� ����ȯ�ؼ� ��ȯ��.
	public int getIntParameter(String Req,int ifNulltoReplace ) {
		try {
			if ( Req == null || Req.equals(""))
				return ifNulltoReplace;
			else
				return Integer.parseInt(Req.toString());
		} catch (NumberFormatException e) {
			return ifNulltoReplace;
		}
	}

	// Null ���ڿ��� �������� ��ȯ
	public static String checkNull(String str) {
		String strTmp;
		if (str == null)
			strTmp = "";
		else
			strTmp = str.trim();
		return strTmp;
	}
%>
<%
	response.setHeader("Cache-Control","no-cache");
 	response.setHeader("Pragma","no-cache");
 	response.setDateHeader("Expires",0);
	String serviceKey = "6xcUt1mwqE0oroPt9wfO8%2BXWW9gLtX4RIfUuOLKIq%2FIzbwVY0KUTnsYRFqxDIPJivQeIt5y7G6yZWDa%2BJg5Pfg%3D%3D";
 	
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMdd");	
	SimpleDateFormat sf2 = new SimpleDateFormat("yyyyMMddhhmmss");	

	String contentTypeId = checkNull(request.getParameter("contentTypeId"));
	String areaCode = checkNull(request.getParameter("areaCode"));
	String sigunguCode = checkNull(request.getParameter("sigunguCode"));
	String contentId = checkNull(request.getParameter("contentId"));
	String mapx = checkNull(request.getParameter("mapx"));
	String mapy = checkNull(request.getParameter("mapy"));
	int pageNo = getIntParameter(request.getParameter("pageNo"), 1);
	int numOfRows = 5;		// ���������� ������ ��������

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <TITLE>����Ʈ</TITLE>
  <style>
	/* ��Ʈ���� */
	.t3{position:relative;font-size:50px; font-family:'Nanum Gothic'}
	.t3 h3{font-size:1.69em;margin-bottom:0.75em;color:#323232;letter-spacing:-0.05em;}
	.t3 .tblWrap{width:100%;overflow:hidden;}
	.t3 table{width:95% !important;letter-spacing:-0.05em;border-top:3px solid #37315d;border-bottom:2px solid #e2e2e2;border-spacing:0;border-collapse:collapse; line-height:18px;}
	.t3 thead tr:first-child th{border-top:0;}
	.t3 th,
	.t3 td{padding:10px 10px 10px 10px;font-weight:400;text-align:center;border-top:1px solid #e2e2e2;border-left:1px solid #e2e2e2; }
	.t3 thead tr:first-child th:first-child ,
	.t3 td.ty3{border-left:0;}
	.t3 th{background:#f4f4f4;}
	.t3 th.ty1{background:#f4efe4;}
	.t3 td.ty1{background:#fcf5e9;}
	.t3 td.ty2{color:#005c9a;}
	.t3 td.ty3{color:#e72744;font-weight:bold}
	.t3 td.ty4{color:#e72744;}

	.t3 .result{position:relative;font-size:50px; font-family:'Nanum Gothic'}
	.t3 .result h3{font-size:1.69em;margin-bottom:0.75em;color:#323232;letter-spacing:-0.05em;}
	.t3 .result .tblWrap{width:100%;overflow:hidden;}
	.t3 .result table{width:70% !important;letter-spacing:-0.05em;border-top:3px solid #37315d;border-bottom:2px solid #e2e2e2;border-spacing:0;border-collapse:collapse; line-height:18px;}
	.t3 .result thead tr:first-child th{border-top:0;}
	.t3 .result th,
	.t3 .result td{padding:10px 0;font-weight:400;text-align:center;border-top:1px solid #e2e2e2;border-left:1px solid #e2e2e2;}
	.t3 .result thead tr:first-child th:first-child ,
	.t3 .result td.ty3{border-left:0;}
	.t3 .result th{background:#f4f4f4;}
	.t3 .result th.ty1{background:#f4efe4;}
	.t3 .result td.ty1{background:#fcf5e9;}
	.t3 .result td.ty2{color:#005c9a;}
	.t3 .result td.ty3{color:#e72744;font-weight:bold}
	.t3 .result td.ty4{color:#e72744;}


	@font-face {
		font-family:'NGNormal';
		font-style:normal;
		font-weight:400;
		src:url('../font/NanumGothic.eot');
		src:local(��), url('../font/NanumGothic.eot') format('embedded-opentype'), url('../font/NanumGothic.woff') format('woff');/*, url('../font/NanumGothic.otf') format('opentype'); */
	}
	@font-face {
		font-family:'NGBold';
		font-style:normal;
		font-weight:600;
		src:url('../font/NanumGothicBold.eot');
		src:local(��), url('../font/NanumGothicBold.eot') format('embedded-opentype'), url('../font/NanumGothicBold.woff') format('woff');/* , url('../font/NanumGothicBold.otf') format('opentype'); */
	}

	body {margin:0px;padding:0px;font:normal 13px/1.5 "�������", NanumGothic, NGNormal, "����", Dotum, Arial, Tahoma , Geneva, Verdana;color:#666;}
	.summary p {
		margin-left: 0px;
		font-size: 12px;
		line-height: 1.9;
	}
  </style>
<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="/api/js/xml2json.js"></script>
<script src="/api/js/jquery.xdomainajax.js"></script>
<script>
var array_of_address;
function search()
{
	
	$('#text').html("<table><tr><td style='font-size:12px'><img src='/api/img/ajax_loader6.gif' /></td></tr></table>");

	var keyword = encodeURIComponent($("table input").val());
	var url_search ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=<%=serviceKey%>&contentTypeId=<%=contentTypeId%>&contentId=<%=contentId%>&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y ";
//	url_search = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=6xcUt1mwqE0oroPt9wfO8%2BXWW9gLtX4RIfUuOLKIq%2FIzbwVY0KUTnsYRFqxDIPJivQeIt5y7G6yZWDa%2BJg5Pfg%3D%3D&contentTypeId=&contentId=2381406&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y"
	console.log("url_search : "+url_search);
	var vToday = new Date();

	$.ajax({
		url: url_search,
		cache: false,
		data: $('form1').serialize(),
		type: 'GET',
		timeout: 10000,
		
		success: function(res) {
			console.log("res======",res);
		
			var myXML = "";
			myXML = res.responseText;
//			alert(myXML);
			
			if(myXML == "" || myXML == null){
				alert("�Ͻ����� ������ �߻��Ͽ����ϴ�. �ٽ��ѹ� �˻����ּ���.");
			}
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));
			var kkk = $(myXML.find('totalCount').text());
			console.log("�Ǽ� : "+kkk);


			var link = "";
					link = "<table>"
			if(array_of_address.length>0)
			{
				for(var i=0; i<array_of_address.length ; i++)
				{
					var imgUrl = "/api/img/noimg.png";
					if($(array_of_address[i]).find("firstimage").text() != ""){
						imgUrl = $(array_of_address[i]).find("firstimage").text();
					}

				link += "<tr><td style='font-size:12px'><img src='"+imgUrl+"' width='300'/></td></tr>";
				if($(array_of_address[i]).find("addr1").text() != ""){
					link += "<tr><td style='font-size:12px;text-align:left;'>&nbsp;�ּ� : ("+$(array_of_address[i]).find("addr1").text()+" "+$(array_of_address[i]).find("addr2").text()+"<br/>&nbsp;Ȩ������ : "+$(array_of_address[i]).find("homepage").text()+"</td></tr>";
				}
				link += "<tr><td style='font-size:12px;text-align:left;'>"+$(array_of_address[i]).find("overview").text()+"</td></tr>";


//				document.getElementById("map").style.display="block";
				$('#text').html(link);
				}
				
			}
			else
			{
				$('#text').html("<table><tr><td style='font-size:12px'>��ϵ� ������ �����ϴ�.</td></tr></table>");
			}
			
		}
	});
}


function set_date(n){
	// yyyymmdd ���·� �����õ� ��¥ ��ȯ
	Date.prototype.yyyymmdd = function()
	{
		var yyyy = this.getFullYear().toString();
		var mm = (this.getMonth() + 1).toString();
		var dd = this.getDate().toString();
		return yyyy + (mm[1] ? mm : '0'+mm[0]) + (dd[1] ? dd : '0'+dd[0]);
	}
}

function set_comma(n){
	var reg=/(^[+-]?\d+)(\d{3})/;
		n+='';
	while(reg.test(n))
		n=n.replace(reg,'$1'+','+'$2');
		return n;
}

function goSearch()
{
	document.form1.submit();	
}
</script>
</head>

 <BODY onload="search()">
 <center><h2>�б�</h2>
 <div class="t3">

		<div id="text"></div>
		<div>
		 <div id="map" style="width:340px;height:250px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50307dbdbb2f9da37245fe87ac7e5e3a"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new daum.maps.LatLng(<%=mapy%>, <%=mapx%>),
				level: 3
			};

			var map = new daum.maps.Map(container, options);

			// ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
			var marker = new daum.maps.Marker({ 
				// ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
				position: map.getCenter() 
			}); 
			// ������ ��Ŀ�� ǥ���մϴ�
			marker.setMap(map);
		</script>
		</div>
 </div>
	</center>
 </BODY>
</HTML>