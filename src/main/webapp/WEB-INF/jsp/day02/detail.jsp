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
	<div class="container">
	
		<small class="text-success">제목</small> 
		<input type="text" id="title" value="${music.title}"><br>
		
		<small class="text-success">노래제목</small> 
		<input type="text" id="albumTitle"  value="${music.albumTitle}"><br>
		
		<small class="text-success">이름</small> 
		<input type="text" id="name"  value="${music.name}"><br>
		
		<small class="text-success">재생시간</small> 
		<input type="text" id="playTime"  value="${music.playTime}"><br>
	
		<small class="text-success">멤버인원수</small> 
		<input type="text" id="memberCount"  value="${music.memberCount}"><br>
		
		<small class="text-success">작사가</small> 
		<input type="text" id="lyricist"  value="${music.lyricist}"><br>
		
		<small class="text-success">작곡가</small> 
		<input type="text" id="composer"  value="${music.composer}"><br>
		
		<small class="text-success">데뷔</small> 
		<input type="text" id="debut"  value="${music.debut}"><br>
		
		<small class="text-success">소속사</small> 
		<input type="text" id="agency"  value="${music.agency}"><br>
		
		<small class="text-success">발매일</small> 
		<input type="text" id="releaseDate"  value="${music.releaseDate}"><br>
		
		<small class="text-success">트랙수</small> 
		<input type="text" id="tracks"  value="${music.tracks}"><br>
		
		<small class="text-success">팬클럽</small> 
		<input type="text" id="fanClub"  value="${music.fanClub}"><br>
		
		<small class="text-success">한줄소개</small> 
		<input type="text" id="introduce"  value="${music.introduce}"><br>
		
		<button type="button" id="updateBtn">수정</button>
		<a href="/day02/list_view"><button type="button" class="update-btn" data-music-id="${music.id}">목록</button></a>
	</div>
	
	<script>
		$(document).ready(function(e) {
			$('#updateBtn').on('click',function(e) {
				//alert('click');
				
				var id = $('.update-btn').data('music-id');
				var title = $('#title').val();
				var albumTitle = $('#albumTitle').val();
				var name = $('#name').val();
				var playTime = $('#playTime').val();
				var memberCount = $('#memberCount').val();
				var lyricist = $('#lyricist').val();
				var composer = $('#composer').val();
				var debut = $('#debut').val();
				var agency = $('#agency').val();
				var releaseDate = $('#releaseDate').val();
				var tracks = $('#tracks').val();
				var fanClub = $('#fanClub').val();
				var introduce = $('#introduce').val();
				
				$.ajax({
					type: 'put'
					,url: '/day02/update'
					,data: {
						"id": id
						,"title" : title
						,"albumTitle" : albumTitle
						,"name" : name
						,"playTime" : playTime
						,"memberCount" : memberCount
						,"lyricist" : lyricist
						,"composer" : composer
						,"debut" : debut
						,"agency" : agency
						,"releaseDate" : releaseDate
						,"tracks" : tracks
						,"fanClub" : fanClub
						,"introduce" : introduce
					}
					,success: function (data) {
						if (data.result == 'success') {
							alert('수정성공');
							location.href = '/day02/list_view';
						} else {
							alert(data.errorMessage);
						}
					}
					,error: function (data) {
						alert('관리자에게 문의바랍니다.');
					}
				});
			});
		});
	</script>
</body>
</html>