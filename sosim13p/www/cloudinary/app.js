var CLOUDINARY_URL = '	https://api.cloudinary.com/v1_1/dv8img/upload';
var CLOUDINARY_UPLOAD_PRESET = 'imgFile';

var imgPreview = document.getElementById('img-preview');
var fileUpload = document.getElementById('file-upload');

fileUpload.addEventListener('change', function(event){
	imgPreview.src = "loader.gif";
	var file = event.target.files[0];
	var formData = new FormData();
	formData.append('file', file);
	formData.append('upload_preset', CLOUDINARY_UPLOAD_PRESET);
	
	axios({
		url : CLOUDINARY_URL,
		method: 'POST',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		data: formData
	}).then(function(res){
		console.log(res);
		imgPreview.src = res.data.secure_url.replace("upload","upload/c_scale,w_730");
//		$('#copy').html(res.data.secure_url.replace("upload","upload/c_scale,w_730"));
		$('#copy').html('[#'+res.data.secure_url.replace("upload","upload/c_scale,w_700")+']');
//		$('#copy').html('[#'+res.data.secure_url.replace("upload","upload/c_scale,g_south_east,h_50,l_hlvh0wwimmfdphhvbocb,w_200")+']');
	}).catch(function(err){
		console.error(err);
	});
});