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

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
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
	<small>아이디</small>
	<div>
		<input type="text" id="loginId">
	</div>

	<small>비밀번호</small>
	<div>
		<input type="password" id="password">
	</div>

	<small>이름</small>
	<div>
		<input type="text" id="name">
	</div>

	<small>지역</small>
	<div>
		<input type="text" id="region">
	</div>

	<small>인원수</small>
	<div>
		<input type="text" id="headcount">
	</div>

	<small>숙박일수</small>
	<div>
		<input type="text" id="day">
	</div>

	<small>체크인</small>
	<div>
		<input type="text" id="checkin">
	</div>

	<small>체크아웃</small>
	<div>
		<input type="text" id="chcekout">
	</div>

	<small>연락처</small>
	<div>
		<input type="text" id="phoneNumber">
	</div>

	<small>상태</small>
	<div>
		<input type="text" id="state">
	</div>

	<button type="button" onclick="insertBtn()">추가</button>

	<script>
		function insertBtn() {
			var loginId = $('#loginId').val();
			var password = $('#password').val();
			var name = $('#name').val();
			var region = $('#region').val();
			var headcount = $('#headcount').val();
			var day = $('#day').val();
			var checkin = $('#checkin').val();
			var chcekout = $('#chcekout').val();
			var phoneNumber = $('#phoneNumber').val();
			var state = $('#state').val();

			$.ajax({
				type : 'post',
				url : '/day05/create',
				data : {
					"loginId" : loginId,
					"password" : password,
					"name" : name,
					"region" : region,
					"headcount" : headcount,
					"day" : day,
					"checkin" : checkin,
					"chcekout" : chcekout,
					"phoneNumber" : phoneNumber,
					"state" : state
				},
				success : function(data) {
					if (data.result == 'success') {
						alert('추가성공');
						location.href = "/day05/list_view";
					} else {
						alert(data.errorMessage);
					}
				},
				error : function(data) {
					alert('관리자에게 문의 바랍니다.');
				}
			});
		}
	</script>
</body>
</html>