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
	<a href="/day08/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>닉네임</th>
			<th>온도</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>내용</th>
			<th>지역</th>
			<th>시작일</th>
			<th>종료일</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${marketList}" var="market">
		<tr>
			<td>${market.nickname}</td>
			<td>${market.temperate}</td>
			<td>${market.title}</td>
			<td>${market.category}</td>
			<td>${market.price}</td>
			<td>${market.content}</td>
			<td>${market.area}</td>
			<td>${market.startDate}</td>
			<td>${market.endDate}</td>
			<td><a href="/day08/detail_view?id=${market.id}"><button type="button" >수정</button></a></td>
			<td><button type="button" data-market-id="${market.id}" onclick="deleteBtn(this)" class="deleteBtn">삭제</button></td>
		</tr>
		</c:forEach>
	</table>
	
	<script>
	function deleteBtn(obj) {
		var id = $(obj).data('market-id');
		//alert(id); //undifinded
		
		$.ajax({
			type: 'delete'
			,url : '/day08/delete' 
			,data: {'id' : id}
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
	}
	</script>
</body>
</html>