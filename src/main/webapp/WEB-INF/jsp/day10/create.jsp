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

	<small>노래 제목</small>
	<div><input type="text" id="title" name="title"></div><br>
		
	<small>재생 시간</small>
	<div><input type="text" id="playTime" name="playTime"></div><br>
	
	<small>작사가</small>
	<div><input type="text" id="lyricist" name="lyricist"></div><br>
	
	<small>작곡가</small>
	<div><input type="text" id="composer" name="composer"></div><br>
	
	<small>가수</small>
	<div><input type="text" id="name" name="name"></div><br>

	<small>데뷔</small>
	<div><input type="text" id="debut" name="debut"></div><br>
	
	<small>소속사</small>
	<div><input type="text" id="agency" name="agency"></div><br>
	
	<small>앨범 발매일</small>
	<div><input type="text" id="releaseDate" name="releaseDate"></div><br>
	
	<small>트랙수</small>
	<div><input type="text" id="tracks" name="tracks"></div><br>
	
	<button type="button" onclick="insertBtn()">추가</button>
	
	<script>
		function insertBtn() {
			//alert('click');
			
			var title = $('#title').val();
			var playTime = $('#playTime').val();
			var lyricist = $('#lyricist').val();
			var composer = $('#composer').val();
			var name = $('#name').val();
			var debut = $('#debut').val();
			var agency = $('#agency').val();
			var releaseDate = $('#releaseDate').val();
			var tracks = $('#tracks').val();
			
			$.post({
				url: '/day10/create'
				,data: {
					'title':title
					,'playTime':playTime
					,'lyricist':lyricist
					,'composer':composer
					,'name':name
					,'debut':debut
					,'agency':agency
					,'releaseDate':releaseDate
					,'tracks':tracks
					
				}
				,success: function(data) {
					if (data.result == 'success') {
						alert('추가성공');
						location.href='/day10/list_view';
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