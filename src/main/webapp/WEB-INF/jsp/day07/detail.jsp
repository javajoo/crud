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

	<small>닉네임</small>
	<div><input type="text" id="nickname" value="${used.nickname}"></div>
	
	<small>온도</small>
	<div><input type="text" id="temperate" value="${used.temperate}"></div>
	
	<small>제목</small>
	<div><input type="text" id="title" value="${used.title}"></div>
	
	<small>카테고리</small>
	<div><input type="text" id="category" value="${used.category}"></div>
	
	<small>가격</small>
	<div><input type="text" id="price" value="${used.price}"></div>
	
	<small>내용</small>
	<div><input type="text" id="content" value="${used.content}"></div>
	
	<small>지역</small>
	<div><input type="text" id="area" value="${used.area}"></div>
	
	<small>게시날짜</small>
	<div><input type="text" id="startDate" value="${used.startDate}"></div>
	
	<small>종료날짜</small>
	<div><input type="text" id="endDate" value="${used.endDate}"></div>
	
	<button type="button" onclick="updateBtn()" class="update-btn" data-used-id="${used.id}">수정</button>
	
	<script>
		function updateBtn() {
			var nickname = $('#nickname').val();
			var temperate = $('#temperate').val();
			var title = $('#title').val();
			var category = $('#category').val();
			var price = $('#price').val();
			var content = $('#content').val();
			var area = $('#area').val();
			var startDate = $('#startDate').val();
			var endDate = $('#endDate').val();
			var id = $('.update-btn').data('used-id');
			
			$.ajax({
				type: 'put'
				,url: '/day07/update'
				,data: {
					"nickname":nickname
					,"temperate":temperate
					,"title":title
					,"category":category
					,"price":price
					,"content":content
					,"area":area
					,"startDate":startDate
					,"endDate":endDate
					,"id": id
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('수정성공');
						location.href='/day07/list_view';
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