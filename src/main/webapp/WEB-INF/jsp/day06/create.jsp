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
	<div><input type="text" id="store"></div>
	
	<small>가게번호</small>
	<div><input type="text" id="phoneNumber"></div>
	
	<small>주소</small>
	<div><input type="text" id="address"></div>
	
	<small>사업자번호</small>
	<div><input type="text" id="businessNumber"></div>
	
	<small>소개명</small>
	<div><input type="text" id="introduce"></div>
	
	<small>메뉴</small>
	<div><input type="text" id="menu"></div>
	
	<small>최소주문가격</small>
	<div><input type="text" id="minPrice"></div>
	
	<small>결제방법</small>
	<div><input type="text" id="method"></div>
	
	<small>배달시간</small>
	<div><input type="text" id="deliveryTime"></div>
	
	<small>배달팁</small>
	<div><input type="text" id="deliveryTip"></div>
	
	<small>고객명</small>
	<div><input type="text" id="userName"></div>
	
	<small>별점</small>
	<div><input type="text" id="point"></div>
	
	<small>리뷰</small>
	<div><input type="text" id="review"></div>
	
	<button type="button" onclick="insertBtn()">추가</button></div>
	
	<script>
		function insertBtn() {
			//alert('click');
			
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
			
			$.ajax({
				type: 'POST'
				,url: '/day06/create'
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
					
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('추가성공');
						location.href='/day06/list_view';
					} else {
						alert(data.errorMessage);
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