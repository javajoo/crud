<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body>
	<a href="/day01/insert_view">추가</a>
	<table>
			<tr>
			
				<th>순서</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>생일</th>
				<th>별명</th>
				<th>키</th>
				<th>몸무게</th>
				<th>직업</th>
				<th>연락처</th>
				<th>이메일</th>
				<th>기술</th>
				<th>연봉</th>
				<th>자기소개</th>
				<th></th>
				<th></th>
			</tr>
		<c:forEach var="resume" items="${resumelist}">
		<tr>
			<td>${resume.id}</td>
			<td>${resume.loginId}</td>
			<td>${resume.password}</td>
			<td>${resume.name}</td>
			<td>${resume.gender}</td>
			<td>${resume.age}</td>
			<td>${resume.birth}</td>
			<td>${resume.nickname}</td>
			<td>${resume.height}</td>
			<td>${resume.weight}</td>
			<td>${resume.job}</td>
			<td>${resume.phoneNumber}</td>
			<td>${resume.email}</td>
			<td>${resume.performance}</td>
			<td>${resume.salary}</td>
			<td>${resume.introduce}</td>
			<td><a href="/day01/detail_view?id=${resume.id}" >수정</a>
			<td><button type="button"  class="del-btn" data-resume-id="${resume.id}">삭제</button></td>
		
		</tr>
		</c:forEach>
	</table>
<script>


	$(document).ready(function() {

	$('.del-btn').on('click',function(e) {
	
		alert('click');
		var id = $('.del-btn').data('resume-id');
	
		$.ajax({
			type: 'DELETE'
			,url: '/day01/delete'
			,data: {"id" : id}
			,success: function(data) {
				location.reload();
			}
			,error: function(data) {
				alert('관리자에게 문의 해주세요.');
			}
		});
	});
});
</script>
</body>
	
</html>

