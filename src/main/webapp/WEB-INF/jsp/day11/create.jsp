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
	<input type="text" id="loginId" name="loginId"><br>
	
	<small>비밀번호</small>
	<input type="password" id="password" name="password"><br>
	
	<small>이름</small>
	<input type="text" id="name" name="name"><br>
	
	<small>닉네임</small>
	<input type="text" id="nickname" name="nickname"><br>
	
	<small>직업</small>
	<input type="text" id="job" name="job"><br>
	
	<small>키</small>
	<input type="text" id="height" name="height"><br>
	
	<small>몸무게</small>
	<input type="text" id="weight" name="weight"><br>
	
	<small>성별</small>
	<input type="text" id="gender" name="gender"><br>
	
	<small>생년월일</small>
	<input type="text" id="birth" name="birth"><br>
	
	<small>이메일</small>
	<input type="text" id="email" name="email"><br>
	
	<small>취미</small>
	<input type="text" id="hobby" name="hobby"><br>
	
	<small>소개</small>
	<input type="text" id="introduce" name="introduce"><br>
	
	<small>연락처</small>
	<input type="text" id="phoneNumber" name="phoneNumber"><br>
	
	<button type="button" class="insert-btn" onclick="insertBtn()">추가</button>
	
	
	<script>
		function insertBtn() {
			//alert('click');
			var loginId = $('#loginId').val().trim();
			var password = $('#password').val().trim();
			var name = $('#name').val().trim();
			var nickname = $('#nickname').val().trim();
			var job = $('#job').val().trim();
			var height = $('#height').val().trim();
			var weight = $('#weight').val().trim();
			var gender = $('#gender').val().trim();
			var birth = $('#birth').val().trim();
			var email = $('#email').val().trim();
			var hobby = $('#hobby').val().trim();
			var introduce = $('#introduce').val().trim();
			var phoneNumber = $('#phoneNumber').val().trim();
			//alert(loginId);
			
			$.ajax ({
				type : 'post'
				,url : '/day11/create'
				,data : {
					'loginId': loginId
					,'password':password
					,'name':name
					,'nickname':nickname
					,'job':job
					,'height':height
					,'weight':weight
					,'gender':gender
					,'birth':birth
					,'email':email
					,'hobby':hobby
					,'introduce':introduce
					,'phoneNumber':phoneNumber
				}
				,success : function(data) {
					if (data.result == 'success') {
						alert('추가성공!!!');
						location.href='/day11/list_view';
					} else {
						alert(data.errorMessage);
					}
				}
				,error : function(data) {
					alert('관리자에게 문의바랍니다.');
				}
			});
		};
	</script>
	
</body>
</html>