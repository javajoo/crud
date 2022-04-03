<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>
	<small>아이디</small>
	<div><input type="text" id="loginId"></div>
	
	<small>비밀번호</small>
	<div><input type="password" id="password"></div>
	
	<small>이름</small>
	<div><input type="text" id="name"></div>
	
	<small>지역</small>
	<div><input type="text" id="region"></div>
	
	<small>인원수</small>
	<div><input type="text" id="headcount"></div>
	
	<small>숙박일수</small>
	<div><input type="text" id="day"></div>
	
	<small>체크인</small>
	<div><input type="text" id="checkin"></div>
	
	<small>체크아웃</small>
	<div><input type="text" id="chcekout"></div>
	
	<small>연락처</small>
	<div><input type="text" id="phoneNumber"></div>
	
	<small>상태</small>
	<div><input type="text" id="state"></div>
	
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
			type: 'post'
			,url: '/day05/create'
			,data: {
				"loginId":loginId
				,"password":password
				,"name":name
				,"region":region
				,"headcount":headcount
				,"day":day
				,"checkin":checkin
				,"chcekout":chcekout
				,"phoneNumber":phoneNumber
				,"state":state
			}
			,success: function(data){
				if (data.result == 'success') {
					alert('추가성공');
					location.href="/day05/list_view";
				} else {
					alert(data.errorMessage);
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