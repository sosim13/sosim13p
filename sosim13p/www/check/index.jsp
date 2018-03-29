<%@ page contentType="text/html;charset=UTF-8" %>
<%
	String andYN = "N";
	String ua=request.getHeader("User-Agent").toLowerCase();
 
	if (ua.matches(".*(android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino).*")||ua.substring(0,4).matches("1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-")) andYN = "Y";
%>
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
			if(document.cookie.indexOf("musinsa=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("musinsa").className = "hide";
			}
			if(document.cookie.indexOf("nike=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("nike").className = "hide";
				console.log("1");
			}else{
				console.log("2");
			}
			if(document.cookie.indexOf("pieceworker=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("pieceworker").className = "hide";
			}
			if(document.cookie.indexOf("modified=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("modified").className = "hide";
			}
			if(document.cookie.indexOf("debecmall=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("debecmall").className = "hide";
			}
			if(document.cookie.indexOf("yes24=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("yes24").className = "hide";
			}
			if(document.cookie.indexOf("romanticmove=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("romanticmove").className = "hide";
			}
			if(document.cookie.indexOf("shoemarker=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("shoemarker").className = "hide";
			}
			if(document.cookie.indexOf("kumkang=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("kumkang").className = "hide";
			}
			if(document.cookie.indexOf("marsraight=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("marsraight").className = "hide";
			}
			if(document.cookie.indexOf("topten=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("topten").className = "hide";
			}
			if(document.cookie.indexOf("doctc=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("doctc").className = "hide";
			}
			if(document.cookie.indexOf("mookas=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("mookas").className = "hide";
			}
			if(document.cookie.indexOf("ztreet=hide") >= 0 ){      // 쿠키 저장여부 체크
				document.getElementById("ztreet").className = "hide";
			}		
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
