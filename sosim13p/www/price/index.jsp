<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	response.setHeader("Cache-Control","no-cache");
 	response.setHeader("Pragma","no-cache");
 	response.setDateHeader("Expires",0);
	String serviceKey = "6xcUt1mwqE0oroPt9wfO8%2BXWW9gLtX4RIfUuOLKIq%2FIzbwVY0KUTnsYRFqxDIPJivQeIt5y7G6yZWDa%2BJg5Pfg%3D%3D";
 	
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyyMMdd");	
	SimpleDateFormat sf2 = new SimpleDateFormat("yyyyMMddhhmmss");	

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <TITLE>리스트</TITLE>
  <style>
	/* 폰트설정 */
	.t3{position:relative;font-size:10px; font-family:'Nanum Gothic'}
	.t3 h3{font-size:1.69em;margin-bottom:0.75em;color:#323232;letter-spacing:-0.05em;}
	.t3 .tblWrap{width:100%;overflow:hidden;}
	.t3 table{width:70% !important;letter-spacing:-0.05em;border-top:3px solid #37315d;border-bottom:2px solid #e2e2e2;border-spacing:0;border-collapse:collapse; line-height:18px;}
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

	.t3 .result{position:relative;font-size:10px; font-family:'Nanum Gothic'}
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
	var url_search ="http://openapi.epis.or.kr/openapi/service/PcInfoService/getFrmprdPrdlstPcList?dates=20120720&lcode=12&mcode=1209&scode=120902&marketco=110001&cocode=11000102&serviceKey=6xcUt1mwqE0oroPt9wfO8%2BXWW9gLtX4RIfUuOLKIq%2FIzbwVY0KUTnsYRFqxDIPJivQeIt5y7G6yZWDa%2BJg5Pfg%3D%3D";
	
	
	var vToday = new Date();

	$.ajax({
		url: url_search,
		cache: false,
//		data: { sdate: document.form1.sdate.value, edate: document.form1.edate.value, random : "<%=sf2.format(nowTime)%>"  },
//		data: $('form').serialize(),
		type: 'GET',
		timeout: 10000,
		
		success: function(res) {
			console.log("res======",res);
		
			var myXML = "";
			myXML = res.responseText;
//			alert(myXML);
			
			if(myXML == "" || myXML == null){
				alert("일시적인 오류가 발생하였습니다. 다시한번 검색해주세요.");
			}
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));
			var kkk = $(myXML.find('areacode'));
			console.log("건수 : "+array_of_address.length);


			var link = "";
					link = "<table><tr><th style='font-size:13px'>순번</th><th style='font-size:13px'>판매장</th><th style='font-size:13px'>품목</th><th style='font-size:13px'>가격</th></tr>"
			if(array_of_address.length>0)
			{
				for(var i=0; i<array_of_address.length ; i++)
				{

				link += "<tr><td style='font-size:12px'>"+(Number(i)+1)+"</td>";
				link += "<td style='font-size:12px'>"+$(array_of_address[i]).find("coname").text()+"</td>";
				link += "<td style='font-size:12px'>"+$(array_of_address[i]).find("mclassname").text()+"</td>";
				link += "<td style='font-size:12px'>"+$(array_of_address[i]).find("maxprice").text()+"</td>";

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
</script>
</head>

 <BODY onload="search()">
 <center><h2>리스트</h2>
 <div class="t3">
 <form name="form1" action="search.jsp" method="post">
  <table>
	<tr>
		<td colspan="6">
				<select name="contenttypeid" title="타입 선택" onchange="typeChange(this);">
					<option selected="selected" value="">타입선택</option>
					<option value="12">관광지</option><option value="14">문화시설</option><option value="15">축제공연행사</option><option selected="selected" value="25">여행코스</option><option value="28">레포츠</option><option value="32">숙박</option><option value="38">쇼핑</option><option value="39">음식점</option>		
				</select>
				<select name="areacode" title="지역선택" onchange="getSigunguList(this.value);">
					<option selected="selected" value="">지역선택</option>
					<option selected="selected" value="1">서울</option><option value="2">인천</option><option value="3">대전</option><option value="4">대구</option><option value="5">광주</option><option value="6">부산</option><option value="7">울산</option><option value="8">세종특별자치시</option><option value="31">경기도</option><option value="32">강원도</option><option value="33">충청북도</option><option value="34">충청남도</option><option value="35">경상북도</option><option value="36">경상남도</option><option value="37">전라북도</option><option value="38">전라남도</option><option value="39">제주도</option>		
				</select>
				<select name="sigungucode" title="시군구선택"><option selected="selected" value="">시군구 선택</option><option value="1">강남구</option><option value="2">강동구</option><option value="3">강북구</option><option value="4">강서구</option><option value="5">관악구</option><option value="6">광진구</option><option value="7">구로구</option><option value="8">금천구</option><option value="9">노원구</option><option value="10">도봉구</option><option value="11">동대문구</option><option value="12">동작구</option><option value="13">마포구</option><option value="14">서대문구</option><option value="15">서초구</option><option value="16">성동구</option><option value="17">성북구</option><option value="18">송파구</option><option value="19">양천구</option><option value="20">영등포구</option><option value="21">용산구</option><option value="22">은평구</option><option value="23">종로구</option><option value="24">중구</option><option value="25">중랑구</option></select>
		</td>
		<td><input type="button" value="검색" onclick="search()" /></td>
	</tr>
 </table>
		<div id="text"></div>
		
</form>
 </div>
	</center>
 </BODY>
</HTML>