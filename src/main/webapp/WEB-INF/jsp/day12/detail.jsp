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
	<input type="text" id="nationalAnthem" name="nationalAnthem" value="${nation.nationalAnthem}"><br>
	
	<small>언어</small>
	<input type="text" id="language" name="language" value="${nation.language}"><br>
	
	<small>수도</small>
	<input type="text" id="capital" name="capital" value="${nation.capital}"><br>
	
	<small>화폐단위</small>
	<input type="text" id="moneyUnit" name="moneyUnit" value="${nation.moneyUnit}"><br>
	
	<small>면적</small>
	<input type="text" id="area" name="area" value="${nation.area}"><br>
	
	<small>인구</small>
	<input type="text" id="population" name="population" value="${nation.population}"><br>
	
	<small>GDP</small>
	<input type="text" id="gdp" name="gdp" value="${nation.gdp}"><br>
	
	<small>기후</small>
	<input type="text" id="climate" name="climate" value="${nation.climate}"><br>
	
	<small>역사</small>
	<input type="text" id="history" name="history" value="${nation.history}"><br>
	
	<button type="button" onclick="updateBtn()" class="update-btn" data-nation-id="${nation.id}">수정</button>
	
	<script>
		function updateBtn() {
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
			var id = $('.update-btn').data('nation-id');
			
			$.ajax({
				type: 'put'
				,url: '/day12/update'
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
					,'id': id
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('수정성공!!!!');
						location.href= '/day12/list_view';
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