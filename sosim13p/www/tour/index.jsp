<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.fiveoclock.util.*" %>
<%!
		// 전달된 Req값이 null 이나 "" 이면 0 값을 반환하고 그렇치 않다면 Integer로 형변환해서 반환다.
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

	// 전달된 Req값이 null 이나 "" 이면 ifNulltoReplace 값을 반환하고 그렇치 않다면 Integer로 형변환해서 반환다.
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

	// Null 문자열을 공백으로 변환
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
	int pageNo = getIntParameter(request.getParameter("pageNo"), 1);
	int numOfRows = 5;		// 한페이지에 노출할 페이지수

	out.println(areaCode);
	out.println(sigunguCode);

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <TITLE>리스트</TITLE>
  <style>
	/* 폰트설정 */
	.t3{position:relative;font-size:20px; font-family:'Nanum Gothic'}
	.t3 h3{font-size:1.69em;margin-bottom:0.75em;color:#323232;letter-spacing:-0.05em;}
	.t3 .tblWrap{width:100%;overflow:hidden;}
	.t3 table{width:95% !important;letter-spacing:-0.05em;border-top:3px solid #37315d;border-bottom:2px solid #e2e2e2;border-spacing:0;border-collapse:collapse; line-height:18px;}
	.t3 thead tr:first-child th{border-top:0;}
	.t3 th,
	.t3 td{padding:10px 0;font-weight:400;text-align:center;border-top:1px solid #e2e2e2;border-left:1px solid #e2e2e2;}
	.t3 thead tr:first-child th:first-child ,
	.t3 td.ty3{border-left:0;}
	.t3 th{background:#f4f4f4;}
	.t3 th.ty1{background:#f4efe4;}
	.t3 td.ty1{background:#fcf5e9;}
	.t3 td.ty2{color:#005c9a;}
	.t3 td.ty3{color:#e72744;font-weight:bold}
	.t3 td.ty4{color:#e72744;}

	.t3 .result{position:relative;font-size:20px; font-family:'Nanum Gothic'}
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
	var url_search ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=<%=serviceKey%>&contentTypeId=<%=contentTypeId%>&areaCode=<%=areaCode%>&sigunguCode=<%=sigunguCode%>&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=<%=numOfRows%>&pageNo=<%=pageNo%> ";
	
	console.log("1: "+ url_search);
	var vToday = new Date();

	$.ajax({
		url: url_search,
		cache: false,
		data: $('form1').serialize(),
		type: 'GET',
		timeout: 10000,
		
		success: function(res) {
//			console.log("res======",res);
		
			var myXML = "";
			myXML = res.responseText;
//			alert(myXML);
			
			if(myXML == "" || myXML == null){
				alert("일시적인 오류가 발생하였습니다. 다시한번 검색해주세요.");
			}
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));
			var kkk = $(myXML.find('totalCount').text());
			console.log("건수 : "+kkk);


			var link = "";
					link = "<table><tr><th style='font-size:13px'>순번</th><th style='font-size:13px'>이미지</th><th style='font-size:13px'>제목</th></tr>"
			if(array_of_address.length>1)
			{
				for(var i=0; i<array_of_address.length ; i++)
				{
					var imgUrl = "/api/img/noimg.png";
					if($(array_of_address[i]).find("firstimage2").text() != ""){
						imgUrl = $(array_of_address[i]).find("firstimage2").text();
					}

				link += "<tr><td style='font-size:12px'>"+(Number(i)+1)+"</td>";
				link += "<td style='font-size:12px'><a href='read.jsp?contentTypeId="+$(array_of_address[i]).find("contentTypeId").text()+"&contentId="+$(array_of_address[i]).find("contentid").text()+"&mapx="+$(array_of_address[i]).find("mapx").text()+"&mapy="+$(array_of_address[i]).find("mapy").text()+"'><img src='"+imgUrl+"' width='120px' /></a></td>";
				link += "<td style='font-size:12px'><a href='read.jsp?contentTypeId="+$(array_of_address[i]).find("contentTypeId").text()+"&contentId="+$(array_of_address[i]).find("contentid").text()+"&mapx="+$(array_of_address[i]).find("mapx").text()+"&mapy="+$(array_of_address[i]).find("mapy").text()+"'>"+$(array_of_address[i]).find("title").text()+"</a></td>";

				$('#text').html(link);
				}
				
			}
			else
			{
				$('#text').html("<table><tr><td style='font-size:12px'>등록된 내역이 없습니다.</td></tr></table>");
			}
			
		}
	});
}

function areaCode()
{
	
	var url_search ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?ServiceKey=<%=serviceKey%>&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A ";
	
	console.log(url_search);
	var vToday = new Date();

	$.ajax({
		url: url_search,
		cache: false,
		type: 'GET',
		timeout: 10000,
		
		success: function(res) {
//			console.log("res======",res);
		
			var myXML = "";
			myXML = res.responseText;
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));

			var areaLink = "<select name='areaCode' title='타입 선택' onchange='getSigunguCode(this.value, <%=sigunguCode%>)'>";
			areaLink += "<option selected='selected' value=''>지역선택</option>";

			if(array_of_address.length>1)
			{
				for(var i=0; i<array_of_address.length ; i++)
				{

					if($(array_of_address[i]).find("code").text() == "<%=areaCode%>"){
						areaLink += "<option value='"+$(array_of_address[i]).find("code").text()+"' selected='selected'>"+$(array_of_address[i]).find("name").text()+"</option>";
					}else{
						areaLink += "<option value='"+$(array_of_address[i]).find("code").text()+"' >"+$(array_of_address[i]).find("name").text()+"</option>";
					}

				}
				areaLink += "</select>";
				
				$('#areaLink').html(areaLink);
				
			}
			else
			{
//				$('#text').html("");
			}
			
		}
	});
}

function getSigunguCode(areaCode, value){

	var url_search ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?ServiceKey=<%=serviceKey%>&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=&numOfRows=100&areaCode="+areaCode;
	
	console.log(url_search);
	var vToday = new Date();

	$.ajax({
		url: url_search,
		cache: false,
		type: 'GET',
		timeout: 10000,
		
		success: function(res) {
//			console.log("res======",res);
		
			var myXML = "";
			myXML = res.responseText;
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));

			var sigunguLink = "<select name='sigunguCode' title='시군구선택'>";
			sigunguLink += "<option selected='selected' value=''>시군구선택</option>";
			if(array_of_address.length>1)
			{
				for(var i=0; i<array_of_address.length ; i++)
				{
					if($(array_of_address[i]).find("code").text() == value){
						sigunguLink += "<option value='"+$(array_of_address[i]).find("code").text()+"'>"+$(array_of_address[i]).find("name").text()+"</option>";
					}else{
						sigunguLink += "<option value='"+$(array_of_address[i]).find("code").text()+"'>"+$(array_of_address[i]).find("name").text()+"</option>";
					}

				}
				sigunguLink += "</select>";
					$('#sigunguLink').html(sigunguLink);
			}
			else
			{
//				$('#text').html("");
			}
			
		}
	});
}


function set_date(n){
	// yyyymmdd 형태로 포매팅된 날짜 반환
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

 <BODY onload="<% if(contentTypeId != null){%>areaCode();search();getSigunguCode(1,6)<%}%>">
 <center><h2>리스트</h2>
 <div class="t3">
 <form name="form1" id="form1" action="index.jsp" method="post">
  <table>
	<tr>
		<td colspan="6">
				<select name="contentTypeId" title="타입 선택" onchange="typeChange(this);">
					<option selected="selected" value="">타입선택</option>
					<option value="12">관광지</option><option value="14">문화시설</option><option value="15">축제공연행사</option><option value="25">여행코스</option><option value="28">레포츠</option><option value="32">숙박</option><option value="38">쇼핑</option><option value="39">음식점</option>		
				</select>
				<div id="areaLink">
				<select name="areaCode" title="지역선택" onchange="getSigunguCode(this.value, <%=sigunguCode%>)">
					<option selected="selected" value="">지역선택</option>
				</select>
				</div>
				<div id="sigunguLink">
				<select name="sigunguCode" title="시군구선택">
					<option selected="selected" value="">시군구선택</option>
				</select>
				</div>
		</td>
		<td><input type="button" value="검색" onclick="goSearch()" /></td>
	</tr>
 </table>
		<div id="text"></div>
</form>
 </div>
	</center>
	<div>자료제공 : 한국관광공사</div>
 </BODY>
</HTML>