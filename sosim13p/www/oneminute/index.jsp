<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
	<style>
	<!--
	 /* Font Definitions */
	 @font-face
		{font-family:"Impact";
		panose-1:2 4 5 3 5 4 6 3 2 4;}
	@font-face
		{font-family:"맑은 고딕";
		panose-1:2 11 5 3 2 0 0 2 0 4;}
	@font-face
		{font-family:"\@맑은 고딕";
		panose-1:2 11 5 3 2 0 0 2 0 4;}
	@font-face
		{font-family:HY견고딕;
		panose-1:2 3 6 0 0 1 1 1 1 1;}
	@font-face
		{font-family:"\@HY견고딕";
		panose-1:2 3 6 0 0 1 1 1 1 1;}
	 /* Style Definitions */
	 p.MsoNormal, li.MsoNormal, div.MsoNormal
		{margin:0cm;
		margin-bottom:.0001pt;
		text-align:justify;
		text-justify:inter-ideograph;
		text-autospace:none;
		word-break:break-hangul;
		font-size:10.0pt;
		font-family:"맑은 고딕";}
	 /* Page Definitions */
	 @page WordSection1
		{size:595.3pt 841.9pt;
		margin:3.0cm 72.0pt 72.0pt 72.0pt;}
	div.WordSection1
		{page:WordSection1;}
	-->
	</style>
  <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
  <script>

	function goChange(){
		$(function() {
		//ajax 요청 (이부분을 알아야 ajax를 이용해 json데이터를 가져올 수 있다.)
		$.ajax({
		 url : "msg.jsp", //어떤 데이터,
//		 data: { hour: sc },
		 dataType : "html", //데이터 타입이 무엇
		 success : function(html) {//성공하면 무엇을 불러올 것인가. (여기까지 하고 성공하면 추가작업)

		document.getElementById("msg").innerHTML = html;
		 }
		})
	   });


	}

	

	window.onload = function(){

		window.setInterval( "goChange()", 1000);
		
	}

  </script>
 </HEAD>

 <BODY>
 <div class=WordSection1 style="padding-top:30px;">



<div id="msg">
<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:55.0pt'>&nbsp;</span></p>
</div>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:20.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Check in 3pm </span><span style='font-size:50.0pt'>체크인</span></b></p>

<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Check out 11am </span><span style='font-size:50.0pt'>체크아웃</span></b></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:20.0pt'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>When you check out,</span></b></p>

<p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
style='font-size:53.0pt'>Please leave your key on door knob.</span></b></p>

<p class=MsoNormal align=left style='text-align:left'><b><span style='font-size:
50.0pt'>체크아웃시 열쇠를 문에 꽂아 주세요<span lang=EN-US>.</span></span></b></p>
 </BODY>
</HTML>