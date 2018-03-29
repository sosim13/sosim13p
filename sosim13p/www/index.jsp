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
				// 위시룸 안드로이드 앱이 맞다면 아래 내용 실행
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
<!-- sosim13p 자동크기 -->
<ins class="adsbygoogle"
	 style="display:block"
	 data-ad-client="ca-pub-7252630941302629"
	 data-ad-slot="3870375137"
	 data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
        <ul class="row first">
			<!-- 이미지 사이즈 255 x 340 -->
            <li id="musinsa">
				<a href="#" onclick="textclick('musinsa')">
                <img alt="무신사"  src="/check/upload/무신사.png">
                <p>무신사</p>
				</a>
            </li>
            <li id="nike">
				<a href="#" onclick="textclick('nike')">
                <img alt="나이키공홈"  src="/check/upload/나이키공홈.png">
                <p>나이키공홈</p>
				</a>
            </li>
            <li id="pieceworker">
                <a href="#" onclick="textclick('pieceworker')">
				<img alt="피스워커데님"  src="/check/upload/피스워커데님.png">
                <p>피스워커데님</p>
				</a>
            </li>
            <li id="modified">
				<a href="#" onclick="textclick('modified')">
                <img alt="모디파이드"  src="/check/upload/모디파이드.png">
                <p>모디파이드</p>
				</a>
            </li>
            <li id="debecmall">
				<a href="#" onclick="textclick('debecmall')">
                <img alt="대백몰"  src="/check/upload/대백몰.png">
                <p>대백몰</p>
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
                <img alt="로맨틱무브"  src="/check/upload/로맨틱무브.png">
                <p>로맨틱무브</p>
				</a>
            </li>
            <li id="shoemarker">
				<a href="#" onclick="textclick('shoemarker')">
                <img alt="슈마커"  src="/check/upload/슈마커.png">
                <p>슈마커</p>
				</a>
            </li>
            <li id="kumkang">
				<a href="#" onclick="textclick('kumkang')">
                <img alt="금강제화"  src="/check/upload/금강제화.png">
                <p>금강제화</p>
				</a>
            </li>
            <li id="marsraight">
				<a href="#" onclick="textclick('marsraight')">
                <img alt="마스레이트"  src="/check/upload/마스레이트.png">
                <p>마스레이트</p>
				</a>
            </li>
            <li id="topten">
				<a href="#" onclick="textclick('topten')">
                <img alt="탑텐"  src="/check/upload/탑텐.png">
                <p>탑텐</p>
				</a>
            </li>
            <li id="doctc">
				<a href="#" onclick="textclick('doctc')">
                <img alt="독특닷컴"  src="/check/upload/독특닷컴.png">
                <p>독특닷컴</p>
				</a>
            </li>
            <li id="mookas">
				<a href="#" onclick="textclick('mookas')">
                <img alt="무카스샵"  src="/check/upload/무카스샵.png">
                <p>무카스샵</p>
				</a>
            </li>
            <li id="ztreet">
				<a href="#" onclick="textclick('ztreet')">
                <img alt="지트리트"  src="/check/upload/지트리트.png">
                <p>지트리트</p>
				</a>
            </li>
			

  </ul>

    </div> <!-- /container -->
  </body>
</html>
