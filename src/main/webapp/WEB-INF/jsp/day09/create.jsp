<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<small>loginId</small>
		<input type="text" id="loginId" name="loginId" class="form-control col-5">
	
		<small>password</small>
		<input type="password" id="password" name="password" class="form-control col-5">
	
		<small>confirmPassword</small>
		<input type="password" id="confirmPassword" name="confirmPassword" class="form-control col-5">
	
		<small>name</small>
		<input type="text" id="name" name="name" class="form-control col-5">
	
		<small>email</small>
		<input type="text" id="email" name="email" class="form-control col-5">
	
		<small>lecture</small>
		<select  class="form-control col-5" name="lecture" id="lecture">
			<option value="java">java</option>
			<option value="spring">spring</option>
			<option value="c">c</option>
			<option value="javascript">javascript</option>
			<option value="python">python</option>
		</select><br>

		<div><button type="button" class="form-control col-5" onclick="insertBtn()">가입</button></div>
	</div>
	
	<script>
		function insertBtn() {
			var loginId = $('#loginId').val();
			var password = $('#password').val();
			var confirmPassword = $('#confirmPassword').val();
			var name = $('#name').val();
			var email = $('#email').val();
			var lecture = $('#lecture option:selected').val();
			
			$.ajax({
				type: 'post'
				,url: '/day09/create'
				,data: {'loginId' : loginId
					,'password' : password
					,'confirmPassword' : confirmPassword
					,'name' : name
					,'email' : email
					,'lecture' : lecture
					
				}
				,success : function(data) {
					if (data.result == 'success') {
						alert('가입성공!!');
						location.href='/day09/list_view';
					} else {
						alert(errorMessage);
					}
				}
				,error: function(data) {
					alert('관리자에게 문의 바랍니다.');
				}
			});
		}
	</script>
</body>
</html>