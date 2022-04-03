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
	<small>이름</small>
	<div><input type="text" id="name" value="${info.name}"></div>
	
	<small>전화번호</small>
	<div><input type="text" id="phoneNumber" value="${info.phoneNumber}"></div>
	
	<small>이메일</small>
	<div><input type="text" id="email" value="${info.email}"></div>
	
	<small>장래희망</small>
	<div><input type="text" id="dreamJob" value="${info.dreamJob}"></div>
	
	<small>출생년도</small>
	<div><input type="text" id="year" value="${info.year}"></div>
	
	<small>학기</small>
	<div><input type="text" id="semester" value="${info.semester}"></div>
	
	<small>학기시험</small>
	<div><input type="text" id="term" value="${info.term}"></div>
	
	<small>과목</small>
	<div><input type="text" id="subject" value="${info.subject}"></div>
	
	<small>점수</small>
	<div><input type="text" id="score" value="${info.score}"></div>
	
	<button type="submit" class="updateBtn" onclick="updateBtn()" data-info-id="${info.id}">수정</button>
	
	<script>
		function updateBtn() {
			//alert('click');
			var name = $('#name').val();
			var phoneNumber = $('#phoneNumber').val();
			var email = $('#email').val();
			var dreamJob = $('#dreamJob').val();
			var year = $('#year').val();
			var semester = $('#semester').val();
			var term = $('#term').val();
			var subject = $('#subject').val();
			var score = $('#score').val();
			var id = $('.updateBtn').data('info-id');
			$.ajax({
				type:'put'
				,url: '/day04/update'
				,data: {
					'name':name
					,'phoneNumber':phoneNumber
					,'email':email
					,'dreamJob':dreamJob
					,'year':year
					,'semester':semester
					,'term':term
					,'subject':subject
					,'score':score
					,'id':id
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('수정성공');
						location.href='/day04/list_view';
					} else {
						alert(result.errorMessage);
					}
				}	
				,error: function(data) {
					alert('관리자에게 문의바랍니다.');
				}
			});
			
		}
	</script>
	
</body>
</html>