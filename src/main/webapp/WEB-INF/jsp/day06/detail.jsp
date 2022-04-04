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
</head>
<body>
	<small>가게명</small>
	<div><input type="text" id="store" value=${review.store}></div>
	
	<small>가게번호</small>
	<div><input type="text" id="phoneNumber" value=${review.phoneNumber}></div>
	
	<small>주소</small>
	<div><input type="text" id="address" value=${review.address}></div>
	
	<small>사업자번호</small>
	<div><input type="text" id="businessNumber" value=${review.businessNumber}></div>
	
	<small>소개명</small>
	<div><input type="text" id="introduce" value=${review.introduce}></div>
	
	<small>메뉴</small>
	<div><input type="text" id="menu" value=${review.menu}></div>
	
	<small>최소주문가격</small>
	<div><input type="text" id="minPrice" value=${review.minPrice}></div>
	
	<small>결제방법</small>
	<div><input type="text" id="method" value=${review.method}></div>
	
	<small>배달시간</small>
	<div><input type="text" id="deliveryTime" value=${review.deliveryTime}></div>
	
	<small>배달팁</small>
	<div><input type="text" id="deliveryTip" value=${review.deliveryTip}></div>
	
	<small>고객명</small>
	<div><input type="text" id="userName" value=${review.userName}></div>
	
	<small>별점</small>
	<div><input type="text" id="point" value=${review.point}></div>
	
	<small>리뷰</small>
	<div><input type="text" id="review" value=${review.review}></div>
	
	<button type="button" onclick="updateBtn()" class="update-btn" data-review-id="${review.id}">수정</button></div>
	
	<script>
		function updateBtn() {
			
			var store = $('#store').val();
			var phoneNumber = $('#phoneNumber').val();
			var address = $('#address').val();
			var businessNumber = $('#businessNumber').val();
			var introduce = $('#introduce').val();
			var menu = $('#menu').val();
			var minPrice = $('#minPrice').val();
			var method = $('#method').val();
			var deliveryTime = $('#deliveryTime').val();
			var deliveryTip = $('#deliveryTip').val();
			var userName = $('#userName').val();
			var point = $('#point').val();
			var review = $('#review').val();
			var id = $('.update-btn').data('review-id');
			
			$.ajax({
				type: 'put'
				,url: '/day06/update'
				,data: {
					'store':store
					,'phoneNumber':phoneNumber
					,'address':address
					,'businessNumber':businessNumber
					,'introduce':introduce
					,'menu':menu
					,'minPrice':minPrice
					,'method':method
					,'deliveryTime':deliveryTime
					,'deliveryTip':deliveryTip
					,'userName':userName
					,'point':point
					,'review':review
					,'id' : id
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('수정성공');
						location.href='/day06/list_view';
					} else {
						alert(data.errorMessage);
					}
				}
				,error: function(data) {
					alert(data.errorMessage);
				}
			});
		}
	</script>
</body>
</html>