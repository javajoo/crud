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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<a href="/day04/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>장래희망</th>
			<th>출생년도</th>
			<th>학기</th>
			<th>학기시험</th>
			<th>과목</th>
			<th>점수</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${infoList}"  var="info">
			<tr>
				<td>${info.name}</td>
				<td>${info.phoneNumber}</td>
				<td>${info.email}</td>
				<td>${info.dreamJob}</td>
				<td>${info.year}</td>
				<td>${info.semester}</td>
				<td>${info.term}</td>
				<td>${info.subject}</td>
				<td>${info.score}</td>
				<td><a href="/day04/detail_view?id=${info.id}"><button type="button">수정</button></a></td>
				<td><button type="button" data-info-id=${info.id} class="deleteBtn" onclick="deleteBtn()">삭제</button></td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
	function deleteBtn() {
		//alert('click');
		var id = $('.deleteBtn').data('info-id');
		
		$.ajax({
			type: 'delete'
			,url: '/day04/delete'
			,data: {'id': id}
			,success: function(data) {
				if (data.result == 'success') {
					alert('삭제성공');
					location.reload();
				} else {
					alert('삭제실패');
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