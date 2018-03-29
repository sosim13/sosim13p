<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Bootstrap Photo Gallery Demo</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" rel="stylesheet">    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

    <link href="dist/jquery.bsPhotoGallery-min.css" rel="stylesheet">
    <script src="dist/jquery.bsPhotoGallery-min.js"></script>	
	
    </script>
    <script>
		$(document).ready(function(){
			
			$('ul.first').bsPhotoGallery({
				"classes" : "col-xl-3 col-lg-2 col-md-4 col-sm-4",
				"hasModal" : false,
				"shortText" : false  
			});
		});


		function setCookie( name, value, expiredays ) { 
			var todayDate = new Date(); 
			todayDate.setDate( todayDate.getDate() + expiredays ); 
			document.cookie = name + "=" + value + "; path=/; expires=" + todayDate.toGMTString() + ";" 
		} 

		function textclick(str){

			var goUrl = "";
			if("musinsa" == str){
				goUrl = "http://www.musinsa.com/";
			}else if("nike" == str){
				goUrl = "http://www.nike.co.kr/display/displayShop.lecs?stonType=P";
			}else if("pieceworker" == str){
				goUrl = "http://pwdenim.com/member/login.html";
			}else if("modified" == str){
				goUrl = "http://www.modified.co.kr/member/login.html";
			}else if("debecmall" == str){
				goUrl = "http://www.debecmall.co.kr/?am=usr/dm_usr_login&Lang=kr&prevPage=home/dm_home_attendance&";
			}else if("yes24" == str){
				goUrl = "http://m.yes24.com/";
			}else if("romanticmove" == str){
				goUrl = "http://www.romanticmove.com/attend/stamp.html";
			}else if("shoemarker" == str){
				goUrl = "http://www.shoemarker.co.kr/home/event/attend.php";
			}else if("kumkang" == str){
				goUrl = "https://www.kumkang.com/Mall/Mypage/Attendance.asp";
			}else if("marsraight" == str){
				goUrl = "http://www.marsraight.com/attend/stamp.html";
			}else if("topten" == str){
				goUrl = "http://www.topten10.co.kr/event/event_check/event_check.asp";
			}else if("doctc" == str){
				goUrl = "http://www.doctc.com/shop/event/today.php";
			}else if("mookas" == str){
				goUrl = "https://member.mookas.com/login?next=http://shop.mookas.com/";
			}else if("ztreet" == str){
				goUrl = "http://ztreet.com/main/attendance";
			}		
			setCookie( str, "hide" , 1 ); 

			var broswerInfo = navigator.userAgent;
//			if(broswerInfo.indexOf("APP_Attendance_Android")>-1){
				// ���÷� �ȵ���̵� ���� �´ٸ� �Ʒ� ���� ����
				<% if("Y".equals(andYN)){%>
					window.Attendance.testMove(goUrl);
				<%}else{%>
					location.href=goUrl;
				<%}%>
//			}
		}

    </script>
  </head>
  <style>
      /**************STYLES ONLY FOR DEMO PAGE**************/
      @import url(https://fonts.googleapis.com/css?family=Bree+Serif);
      body {
        background:#ebebeb;
      }   

	  .hide{display:none}

  </style>
  <body>
    <div class="container">
        <!-- <div class="row" style="text-align:center; border-bottom:1px dashed #ccc;  padding:30px 0 20px 0; margin-bottom:40px;">
            <div class="col-lg-12">
            <h3 style="font-family:'Bree Serif', arial; font-weight:bold; font-size:30px;">
                <a style="text-decoration:none; color:#666;" href="#" onclick="goAuto()">Bootstrap Photo Gallery jQuery plugin <span style="color:red;">ADs.</span></a>
            </h3>
			
            </div>
			
        </div> -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- sosim13p �ڵ�ũ�� -->
<ins class="adsbygoogle"
	 style="display:block"
	 data-ad-client="ca-pub-7252630941302629"
	 data-ad-slot="3870375137"
	 data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
        <ul class="row first">
			<!-- �̹��� ������ 255 x 340 -->
            <li id="musinsa">
				<a href="#" onclick="textclick('musinsa')">
                <img alt="���Ż�"  src="/check/upload/���Ż�.png">
                <p>���Ż�</p>
				</a>
            </li>
            <li id="nike">
				<a href="#" onclick="textclick('nike')">
                <img alt="����Ű��Ȩ"  src="/check/upload/����Ű��Ȩ.png">
                <p>����Ű��Ȩ</p>
				</a>
            </li>
            <li id="pieceworker">
                <a href="#" onclick="textclick('pieceworker')">
				<img alt="�ǽ���Ŀ����"  src="/check/upload/�ǽ���Ŀ����.png">
                <p>�ǽ���Ŀ����</p>
				</a>
            </li>
            <li id="modified">
				<a href="#" onclick="textclick('modified')">
                <img alt="������̵�"  src="/check/upload/������̵�.png">
                <p>������̵�</p>
				</a>
            </li>
            <li id="debecmall">
				<a href="#" onclick="textclick('debecmall')">
                <img alt="����"  src="/check/upload/����.png">
                <p>����</p>
				</a>
            </li>
            <li id="yes24">
				<a href="#" onclick="textclick('yes24')">
                <img alt="Yes24"  src="/check/upload/Yes24.png">
                <p>Yes24</a></p>
				</a>
            </li>
            <li id="romanticmove">
				<a href="#" onclick="textclick('romanticmove')">
                <img alt="�θ�ƽ����"  src="/check/upload/�θ�ƽ����.png">
                <p>�θ�ƽ����</p>
				</a>
            </li>
            <li id="shoemarker">
				<a href="#" onclick="textclick('shoemarker')">
                <img alt="����Ŀ"  src="/check/upload/����Ŀ.png">
                <p>����Ŀ</p>
				</a>
            </li>
            <li id="kumkang">
				<a href="#" onclick="textclick('kumkang')">
                <img alt="�ݰ���ȭ"  src="/check/upload/�ݰ���ȭ.png">
                <p>�ݰ���ȭ</p>
				</a>
            </li>
            <li id="marsraight">
				<a href="#" onclick="textclick('marsraight')">
                <img alt="��������Ʈ"  src="/check/upload/��������Ʈ.png">
                <p>��������Ʈ</p>
				</a>
            </li>
            <li id="topten">
				<a href="#" onclick="textclick('topten')">
                <img alt="ž��"  src="/check/upload/ž��.png">
                <p>ž��</p>
				</a>
            </li>
            <li id="doctc">
				<a href="#" onclick="textclick('doctc')">
                <img alt="��Ư����"  src="/check/upload/��Ư����.png">
                <p>��Ư����</p>
				</a>
            </li>
            <li id="mookas">
				<a href="#" onclick="textclick('mookas')">
                <img alt="��ī����"  src="/check/upload/��ī����.png">
                <p>��ī����</p>
				</a>
            </li>
            <li id="ztreet">
				<a href="#" onclick="textclick('ztreet')">
                <img alt="��Ʈ��Ʈ"  src="/check/upload/��Ʈ��Ʈ.png">
                <p>��Ʈ��Ʈ</p>
				</a>
            </li>
			

  </ul>

    </div> <!-- /container -->
  </body>
</html>
