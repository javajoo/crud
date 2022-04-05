<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<a href="/day07/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>닉네임</th>
			<th>온도</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>내용</th>
			<th>지역</th>
			<th>게시날짜</th>
			<th>종료날짜</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${usedList}" var="used">
			<tr>
				<td>${used.nickname}</td>
				<td>${used.temperate}</td>
				<td>${used.title}</td>
				<td>${used.category}</td>
				<td>${used.price}</td>
				<td>${used.content}</td>
				<td>${used.area}</td>
				<td>${used.startDate}</td>
				<td>${used.endDate}</td>
				<td><a href="/day07/detail_view?id=${used.id}"><button type="button">수정</button></a></td>
				<th><button type="button" data-used-id="${used.id}" class="delete-btn" onclick="deleteBtn()">삭제</button></th>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		$(document).ready(function(e) {
			$('.delete-btn').on('click',function(e) {
		
			var id = $(this).data('used-id');
			
			$.ajax({
				type: 'delete'
				,url: '/day07/delete'
				,data: {'id': id}
				,success: function(data) {
					if (data.result == 'success') {
						alert('삭제성공');
						location.reload();	
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