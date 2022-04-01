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
	<a href="/day03/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>회사</th>
			<th>업종</th>
			<th>기업규모</th>
			<th>사원수</th>
			<th>모집부분</th>
			<th>담당업무</th>
			<th>자격요건</th>
			<th>근무형태</th>
			<th>근무지역</th>
			<th>급여</th>
			<th>모집마감</th>
			<th></th>
			<th></th>
		</tr>
		
		<c:forEach var="recrument" items="${recrumentList}">
			<tr>
				<td>${recrument.name}</td>
				<td>${recrument.business}</td>
				<td>${recrument.scale}</td>
				<td>${recrument.headcount}</td>
				<td>${recrument.position}</td>
				<td>${recrument.responsibilities}</td>
				<td>${recrument.qualification}</td>
				<td>${recrument.type}</td>
				<td>${recrument.region}</td>
				<td>${recrument.salary}</td>
				<td>${recrument.deadline}</td>
				<td><a href="/day03/detail_view?id=${recrument.id}"><button type="button">수정</button></a></td>
				<td><button type="button" class="delete-btn" data-recrument-id="${recrument.id}">삭제</button></td>
			</tr>
		</c:forEach>
	</table>
	
	
	<script>
		$(document).ready(function(e) {
			$('.delete-btn').on('click',function(e) {
				//alert('click');
				var id = $('.delete-btn').data('recrument-id');
				
				$.ajax({
					type:'delete'
					,url:'/day03/delete'
					,data: {'id':id}
					,success: function(data) {
						alert('삭제성공');
						location.reload();
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