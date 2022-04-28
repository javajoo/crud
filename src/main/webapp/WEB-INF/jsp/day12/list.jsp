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
<a href="/day12/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>순번</th>
			<th>국가</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${nationList}" var="nation">
		<tr>
			<td>${nation.id}</td>
			<td>${nation.nationalAnthem}</td>
			<td><a href="/day12/detail_view?id=${nation.id}"><button type="button">수정</button></a></td>
			<td><a><button type="button" data-nation-id="${nation.id}" onclick="deleteBtn(this)" class="delete-btn">삭제</button></a></td>
		</tr>
		</c:forEach>
	</table>
	
	<script>
		function deleteBtn(obj) {
			//alert('click');
			var id = $(obj).data('nation-id');
			//alert(id);
			
			$.ajax ({
				type: 'delete'
				,url: '/day12/delete'
				,data: {'id' : id}
				,success: function(data) {
					if (data.result == 'success') {
						alert('삭제성공!!!');
						location.reload();
					} else {
						alert(data.errorMessage);
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