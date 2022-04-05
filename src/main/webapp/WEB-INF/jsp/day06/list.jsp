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

	<a href="/day06/create_view"><button type="button">추가</button></a>
	<table>
		<tr>
			<th>가게명</th>
			<th>가게번호</th>
			<th>주소</th>
			<th>사업자번호</th>
			<th>소개명</th>
			<th>메뉴</th>
			<th>최소주문가격</th>
			<th>결제방법</th>
			<th>배달시간</th>
			<th>배달팁</th>
			<th>고객명</th>
			<th>별점</th>
			<th>리뷰</th>
			<th></th>
			<th></th>
		</tr>
		
		<c:forEach items="${reviewList}" var="review">
			<tr>
				<th>${review.store}</th>
				<th>${review.phoneNumber}</th>
				<th>${review.address}</th>
				<th>${review.businessNumber}</th>
				<th>${review.introduce}</th>
				<th>${review.menu}</th>
				<th>${review.minPrice}</th>
				<th>${review.method}</th>
				<th>${review.deliveryTime}</th>
				<th>${review.deliveryTip}</th>
				<th>${review.userName}</th>
				<th>${review.point}</th>
				<th>${review.review}</th>
				<th><a href="/day06/detail_view?id=${review.id}"><button type="button" data-review-id="${review.id}">수정</button></a></th>
				<th><button type="button" data-review-id="${review.id}" class="delete-btn" onclick="deleteBtn()">삭제</button></th>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		function deleteBtn() {
			var id = $('.delete-btn').data('review-id');
			
			$.ajax({
				type: 'delete'
				,url: '/day06/delete'
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
		}
	</script>
</body>
</html>