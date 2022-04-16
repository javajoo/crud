<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	
	<a href="/day09/create_view">추가</a>
		<table class="text-center">
			<tr>
				<th>id</th>
				<th>loginId</th>
				<th>name</th>
				<th>email</th>
				<th>lecture</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			
			<c:forEach var="account" items="${accountList}">
			<tr>
				<td>${account.id}</td>
				<td>${account.loginId}</td>
				<td>${account.name}</td>
				<td>${account.email}</td>
				<td>${account.lecture}</td>
				<td><a href="/day09/detail_view?id=${account.id}"><button class="btn btn-success">수정</button></a></td>
				<td><button type="button" class="btn delete-btn form-control btn-danger" onclick="deleteBtn(this)" data-account-id="${account.id}">삭제</button></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<script>
		function deleteBtn(obj) {
			var id = $(obj).data('account-id');
			//alert(id);
			$.ajax ({
				type: 'delete'
				,url: '/day09/delete'
				,data: {'id' : id}
				,success: function(data) {
					if (data.result == 'success') {
						alert('삭제성공!!');
						location.reload();
					} else {
						alert(errorMessage);
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