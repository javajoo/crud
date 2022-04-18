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
	<div><input type="text" id="title" name="title" value="${song.title}"></div><br>
		
	<small>재생 시간</small>
	<div><input type="text" id="playTime" name="playTime" value="${song.playTime}"></div><br>
	
	<small>작사가</small>
	<div><input type="text" id="lyricist" name="lyricist" value="${song.lyricist}"></div><br>
	
	<small>작곡가</small>
	<div><input type="text" id="composer" name="composer" value="${song.composer}"></div><br>
	
	<small>가수</small>
	<div><input type="text" id="name" name="name" value="${song.name}"></div><br>

	<small>데뷔</small>
	<div><input type="text" id="debut" name="debut" value="${song.debut}"></div><br>
	
	<small>소속사</small>
	<div><input type="text" id="agency" name="agency" value="${song.agency}"></div><br>
	
	<small>앨범 발매일</small>
	<div><input type="text" id="releaseDate" name="releaseDate" value="${song.releaseDate}"></div><br>
	
	<small>트랙수</small>
	<div><input type="text" id="tracks" name="tracks" value="${song.tracks}"></div><br>
	
	<button type="button" onclick="updateBtn()" class="update-btn" data-song-id="${song.id}">수정</button>
	
	<script>
			function updateBtn() {
				//alert(id);
				var title = $('#title').val();
				var playTime = $('#playTime').val();
				var lyricist = $('#lyricist').val();
				var composer = $('#composer').val();
				var name = $('#name').val();
				var debut = $('#debut').val();
				var agency = $('#agency').val();
				var releaseDate = $('#releaseDate').val();
				var tracks = $('#tracks').val();
				var id = $('.update-btn').data('song-id');
				
				$.ajax({
					type: 'put'
					,url: '/day10/update'
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
						,'id': id
					}
					,success: function(data) {
						if (data.result == 'success') {
							alert('수정성공');
							location.href = '/day10/list_view';
						} else {
							alert('수정실패');
						}
					}
					,error: function(data) {
						alert('관리자에게 문의 바랍니다.');
					}
				})
			}
	</script>
	
</body>
</html>