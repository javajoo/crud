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
	<small>국가</small>
	<input type="text" id="nationalAnthem" name="nationalAnthem"><br>
	
	<small>언어</small>
	<input type="text" id="language" name="language"><br>
	
	<small>수도</small>
	<input type="text" id="capital" name="capital"><br>
	
	<small>화폐단위</small>
	<input type="text" id="moneyUnit" name="moneyUnit"><br>
	
	<small>면적</small>
	<input type="text" id="area" name="area"><br>
	
	<small>인구</small>
	<input type="text" id="population" name="population"><br>
	
	<small>GDP</small>
	<input type="text" id="gdp" name="gdp"><br>
	
	<small>기후</small>
	<input type="text" id="climate" name="climate"><br>
	
	<small>역사</small>
	<input type="text" id="history" name="history"><br>
	
	<button type="button" onclick="insertBtn()" class="insert-btn">추가</button>
	
	<script>
		function insertBtn() {
			//alert('click');
			var nationalAnthem = $('#nationalAnthem').val().trim();
			var language = $('#language').val().trim();
			var capital = $('#capital').val().trim();
			var moneyUnit = $('#moneyUnit').val().trim();
			var area = $('#area').val().trim();
			var population = $('#population').val().trim();
			var gdp = $('#gdp').val().trim();
			var climate = $('#climate').val().trim();
			var history = $('#history').val().trim();
			
			$.ajax({
				type: 'post'
				,url: '/day12/create'
				,data: {
					'nationalAnthem':nationalAnthem
					,'language':language
					,'capital':capital
					,'moneyUnit':moneyUnit
					,'area':area
					,'population':population
					,'gdp':gdp
					,'climate':climate
					,'history':history
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('추가성공!!!!');
						location.href = '/day12/list_view';
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