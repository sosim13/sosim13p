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
  <TITLE>����Ʈ</TITLE>
  <style>
	/* ��Ʈ���� */
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
				alert("�Ͻ����� ������ �߻��Ͽ����ϴ�. �ٽ��ѹ� �˻����ּ���.");
			}
			myXML = $.parseXML(myXML)
			myXML = $(myXML);
			array_of_address = $(myXML.find('item'));
			var kkk = $(myXML.find('areacode'));
			console.log("�Ǽ� : "+array_of_address.length);


			var link = "";
					link = "<table><tr><th style='font-size:13px'>����</th><th style='font-size:13px'>�Ǹ���</th><th style='font-size:13px'>ǰ��</th><th style='font-size:13px'>����</th></tr>"
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
</script>
</head>

 <BODY onload="search()">
 <center><h2>����Ʈ</h2>
 <div class="t3">
 <form name="form1" action="search.jsp" method="post">
  <table>
	<tr>
		<td colspan="6">
				<select name="contenttypeid" title="Ÿ�� ����" onchange="typeChange(this);">
					<option selected="selected" value="">Ÿ�Լ���</option>
					<option value="12">������</option><option value="14">��ȭ�ü�</option><option value="15">�����������</option><option selected="selected" value="25">�����ڽ�</option><option value="28">������</option><option value="32">����</option><option value="38">����</option><option value="39">������</option>		
				</select>
				<select name="areacode" title="��������" onchange="getSigunguList(this.value);">
					<option selected="selected" value="">��������</option>
					<option selected="selected" value="1">����</option><option value="2">��õ</option><option value="3">����</option><option value="4">�뱸</option><option value="5">����</option><option value="6">�λ�</option><option value="7">���</option><option value="8">����Ư����ġ��</option><option value="31">��⵵</option><option value="32">������</option><option value="33">��û�ϵ�</option><option value="34">��û����</option><option value="35">���ϵ�</option><option value="36">��󳲵�</option><option value="37">����ϵ�</option><option value="38">���󳲵�</option><option value="39">���ֵ�</option>		
				</select>
				<select name="sigungucode" title="�ñ�������"><option selected="selected" value="">�ñ��� ����</option><option value="1">������</option><option value="2">������</option><option value="3">���ϱ�</option><option value="4">������</option><option value="5">���Ǳ�</option><option value="6">������</option><option value="7">���α�</option><option value="8">��õ��</option><option value="9">�����</option><option value="10">������</option><option value="11">���빮��</option><option value="12">���۱�</option><option value="13">������</option><option value="14">���빮��</option><option value="15">���ʱ�</option><option value="16">������</option><option value="17">���ϱ�</option><option value="18">���ı�</option><option value="19">��õ��</option><option value="20">��������</option><option value="21">��걸</option><option value="22">����</option><option value="23">���α�</option><option value="24">�߱�</option><option value="25">�߶���</option></select>
		</td>
		<td><input type="button" value="�˻�" onclick="search()" /></td>
	</tr>
 </table>
		<div id="text"></div>
		
</form>
 </div>
	</center>
 </BODY>
</HTML>