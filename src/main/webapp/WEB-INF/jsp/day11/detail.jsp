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
	<input type="text" id="loginId" name="loginId" value="${people.loginId}"><br>
	
	<small>비밀번호</small>
	<input type="password" id="password" name="password" value="${people.password}"><br>
	
	<small>이름</small>
	<input type="text" id="name" name="name" value="${people.name}"><br>
	
	<small>닉네임</small>
	<input type="text" id="nickname" name="nickname" value="${people.nickname}"><br>
	
	<small>직업</small>
	<input type="text" id="job" name="job" value="${people.job}"><br>
	
	<small>키</small>
	<input type="text" id="height" name="height" value="${people.height}"><br>
	
	<small>몸무게</small>
	<input type="text" id="weight" name="weight" value="${people.weight}"><br>
	
	<small>성별</small>
	<input type="text" id="gender" name="gender" value="${people.gender}"><br>
	
	<small>생년월일</small>
	<input type="text" id="birth" name="birth" value="${people.birth}"><br>
	
	<small>이메일</small>
	<input type="text" id="email" name="email" value="${people.email}"><br>
	
	<small>취미</small>
	<input type="text" id="hobby" name="hobby" value="${people.hobby}"><br>
	
	<small>소개</small>
	<input type="text" id="introduce" name="introduce" value="${people.introduce}"><br>
	
	<small>연락처</small>
	<input type="text" id="phoneNumber" name="phoneNumber" value="${people.phoneNumber}"><br>
	
	<button type="button" class="update-btn" onclick="updateBtn()" data-people-id="${people.id}">수정</button>
	
	<script>
		function updateBtn() {
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
			var id = $('.update-btn').data('people-id');
			//alert(id);
			
			$.ajax ({
				type : 'put'
				,url : '/day11/update'
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
					,'id':id
				}
				,success : function(data) {
					if (data.result == 'success') {
						alert('수정성공!!!!');
						location.href= '/day11/list_view'
					} else {
						alert(data.errorMessage);
					}
				}
				,error : function(data) {
					alert('관리자에게 문의 바랍니다.');
				}
			});
		}
	</script>
	
</body>
</html>