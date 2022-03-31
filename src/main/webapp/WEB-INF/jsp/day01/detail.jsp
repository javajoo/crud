<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
</head>
</head>
<body>

	<div><input type="text" placeholder="순서" id="id" value=${resume.id}></div>
	<div><input type="text" placeholder="아이디" id="loginId" value=${resume.loginId}></div>
	<div><input type="password" placeholder="비밀번호" id="password" value=${resume.password}></div>
	<div><input type="text" placeholder="이름" id="name" value=${resume.name}></div>
	<div><input type="text" placeholder="성별" id="gender" value=${resume.gender}></div>
	<div><input type="text" placeholder="나이" id="age" value=${resume.age}></div>
	<div><input type="text" placeholder="생일" id="birth" value=${resume.birth}></div>
	<div><input type="text" placeholder="별명" id="nickname" value=${resume.nickname}></div>
	<div><input type="text" placeholder="키" id="height" value=${resume.height}></div>
	<div><input type="text" placeholder="몸무게" id="weight" value=${resume.weight}></div>
	<div><input type="text" placeholder="직업" id="job" value=${resume.job}></div>
	<div><input type="text" placeholder="연락처" id="phoneNumber" value=${resume.phoneNumber}></div>
	<div><input type="text" placeholder="이메일" id="email" value=${resume.email}></div>
	<div><input type="text" placeholder="기술" id="performance" value=${resume.performance}></div>
	<div><input type="text" placeholder="연봉" id="salary" value=${resume.salary}></div>
	<div><textarea rows="5" placeholder="자기소개" id="introduce" >${resume.introduce}</textarea></div>
	<button type="button" onclick="updateBtn()">수정</button>
	<a href="/day01/list_view">목록</a>
	<script>

	function updateBtn() {
		//alert('click');
		var id = $('#id').val();
		var loginId = $('#loginId').val();
		var password = $('#password').val();
		var name = $('#name').val();
		var gender = $('#gender').val();
		var age = $('#age').val();
		var birth = $('#birth').val();
		var nickname = $('#nickname').val();
		var height = $('#height').val();
		var weight = $('#weight').val();
		var job = $('#job').val();
		var phoneNumber = $('#phoneNumber').val();
		var email = $('#email').val();
		var performance = $('#performance').val();
		var salary = $('#salary').val();
		var introduce = $('#introduce').val();
		
 		$.ajax({
 			type:'put'
			,url: '/day01/update'
			,data: {
					'id':id
					,'loginId':loginId
					,'password':password
					,'name':name
					,'gender':gender
					,'age':age
					,'birth':birth
					,'nickname':nickname
					,'height':height
					,'weight':weight
					,'job':job
					,'phoneNumber':phoneNumber
					,'email':email
					,'performance':performance
					,'salary':salary
					,'introduce':introduce}
			,success: function (data) {
				if (data.result == 'success') {
					alert('수정성공');
				} else {
					alert(data.errorMessage);
				}
			}
			,error: function(data) {
				alert('관리자에게 문의 해주세요');
			}
		});  
	};
 	

	

</script>
</body>

</html>