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
	<a href="/day02/create_view">추가</a>
	<table>
		<tr>
			<th>순서</th>
			<th>제목</th>
			<th>노래제목</th>
			<th>이름</th>
			<th>재생시간</th>
			<th>멤버인원수</th>
			<th>작사가</th>
			<th>작곡가</th>
			<th>데뷔</th>
			<th>소속사</th>
			<th>발매일</th>
			<th>트랙수</th>
			<th>팬클럽</th>
			<th>한줄소개</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${musicList}" var="music">
			<tr>
				<td>${music.id}</td>
				<td>${music.title}</td>
				<td>${music.albumTitle}</td>
				<td>${music.name}</td>
				<td>${music.playTime}</td>
				<td>${music.memberCount}</td>
				<td>${music.lyricist}</td>
				<td>${music.composer}</td>
				<td>${music.debut}</td>
				<td>${music.agency}</td>
				<td>${music.releaseDate}</td>
				<td>${music.tracks}</td>
				<td>${music.fanClub}</td>
				<td>${music.introduce}</td>
				<td><a href="/day02/detail_view?id=${music.id}"><button type="button">수정</button></a></td>
				<td><button type="button" class="delBtn" data-music-id="${music.id}">삭제</button></td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		$(document).ready(function(e) {
		 
			$('.delBtn').on('click',function(e) {
				
			alert('click');
			var id = $('.delBtn').data('music-id');
			
			$.ajax({
				type: 'DELETE'
				,url: '/day02/delete'
				,data: {'id':id}
				,success: function (data) {
						alert('삭제성공');
						location.reload();
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