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
	<div>회사</div>
	<input type="text" id="name">
	
	<div>업종</div>
	<input type="text" id="business">
	
	<div>기업규모</div>
	<input type="text" id="scale">
	
	<div>사원수</div>
	<input type="text" id="headcount">
	
	<div>모집 부분</div>
	<input type="text" id="position">
	
	<div>담당 업무</div>
	<input type="text" id="responsibilities">
	
	<div>자격 요건</div>
	<input type="text" id="qualification">
	
	<div>근무형태</div>
	<input type="text" id="type">
	
	<div>근무지역</div>
	<input type="text" id="region">
	
	<div>급여</div>
	<input type="text" id="salary">
	
	<div>모집 마감</div>
	<input type="text" id="deadline"><br>
	
	<button type="button" class="insert-btn">추가</button>
	
	<script>
		$(document).ready(function(e) {
			$('.insert-btn').on('click',function(e) {
				//alert('click');
				
				var name = $('#name').val();
				var business = $('#business').val();
				var scale = $('#scale').val();
				var headcount = $('#headcount').val();
				var position = $('#position').val();
				var responsibilities = $('#responsibilities').val();
				var qualification = $('#qualification').val();
				var type = $('#type').val();
				var region = $('#region').val();
				var salary = $('#salary').val();
				var deadline = $('#deadline').val();
				
				$.ajax({
					type: 'post'
					,url: '/day03/create'
					,data: {
						"name":name
						,"business":business
						,"scale":scale
						,"headcount":headcount
						,"position":position
						,"responsibilities":responsibilities
						,"qualification":qualification
						,"type":type
						,"region":region
						,"salary":salary
						,"deadline":deadline
					}
					,success: function(data) {
						if (data.result == 'success') {
							alert('추가성공');
							location.href="/day03/list_view";
						} else {
							alert(data.errorMessage);
						}
					}
					,error: function(data) {
						alert('관리자에게 문의 바랍니다.');
					}
				});
				
				
			});
		});
	</script>
</body>
</html>