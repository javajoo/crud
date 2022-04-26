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

<a href="/day11/create_view"><button type="button">추가</button></a>
<table class="text-center">
	<tr>
		<th>No</th>
		<th>아이디</th>
		<th>이름</th>
		<th></th>
		<th></th>
	</tr>
	<c:forEach items="${peopleList}" var="people" >
		<tr>
			<td>${people.id}</td>
			<td>${people.name}</td>
			<td><a href="/day11/detail_view?id=${people.id}"><button type="button">수정</button></a></td>
			<td><button type="button" onclick="deleteBtn(this)" class="delete-btn" data-people-id="${people.id}">삭제</button></td>
		</tr>
	</c:forEach>
</table>

<script>
	function deleteBtn(obj) {
		//alert('click');
		var id = $(obj).data('people-id');
		//alert(id);
		
		$.ajax ({
			type : 'delete'
			,url : '/day11/delete'
			,data : {'id' : id}
			,success : function(data) {
				if (data.result == 'success') {
					alert('삭제 성공!!!!');
					location.reload();
				} else {
					alert(data.errorMessage);
				}
			}
			,error : function(data) {
				alert('관리자에게 문의 바랍니다.');
			}
		});
	};
</script>

</body>
</html>