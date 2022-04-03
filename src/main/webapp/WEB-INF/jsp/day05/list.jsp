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
	<a href="/day05/create_view">추가</a>
	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>지역</th>
			<th>인원수</th>
			<th>숙박일수</th>
			<th>체크인</th>
			<th>체크아웃</th>
			<th>연락처</th>
			<th>상태</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="booking" items="${bookingList}">
			<tr>
				<td>${booking.loginId}</td>
				<td>${booking.password}</td>
				<td>${booking.name}</td>
				<td>${booking.region}</td>
				<td>${booking.headcount}</td>
				<td>${booking.day}</td>
				<td>${booking.checkin}</td>
				<td>${booking.chcekout}</td>
				<td>${booking.phoneNumber}</td>
				<td>${booking.state}</td>
				<td><a href="/day05/detail_view?id=${booking.id}"><button type="button">수정</button></a></td>
				<td><button type="button" class="deleteBtn" data-booking-id="${booking.id}" onclick="deleteBtn()">삭제</button></td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		function deleteBtn() {
			var id = $('.deleteBtn').data('booking-id');
			
			$.ajax({
				type: 'delete'
				,url: '/day05/delete'
				,data: {'id': id}
				,success: function(data) {
					if (data.result == 'success') {
						alert('삭제성공');
						location.reload();
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