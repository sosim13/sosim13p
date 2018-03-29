<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Image Upload</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="style.css">
	<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.3/clipboard.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script>
		window.onload = function(){
			$(document).ready(function(){
				var clipboard = new Clipboard('.button_example');
			});
		};
	</script>
  </head>
  <body>
<!-- 나매읽기광고 -->
<div  class="card">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-7252630941302629"
     data-ad-slot="4292477114"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<!--// 나매읽기광고 -->

    <div class="card">
	 <a class="button_example" href="#" data-clipboard-target="#copy">
		<div id="copy"></div>	 
	  </a>
	  <a class="button_example" href="#" data-clipboard-target="#copy">
		<img src="http://res.cloudinary.com/dv8img/image/upload/c_scale,w_730/l_5clock/v1522224396/pzg29vhpkla0bjntbelq.jpg" id="img-preview" />
		<!-- <img src="http://fillmurray.com/g/730/730" id="img-preview" /> -->
	  </a>
      <label class="file-upload-container" for="file-upload">
        <input id="file-upload" type="file" accept="image/*" style="display:none;">
        Select an Image
      </label>	
    </div>

<!-- 이미지사이트 하단 -->
<div class="card">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- image 나토 970px-->
<ins class="adsbygoogle"
     style="display:inline-block;width:730px;height:250px"
     data-ad-client="ca-pub-7252630941302629"
     data-ad-slot="5600646748"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<!--// 이미지사이트 하단 -->

    <!-- Scripts -->
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="app.js"></script>
  </body>
</html>