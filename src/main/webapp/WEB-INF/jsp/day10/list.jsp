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
	<a href="/day10/create_view">추가</a>
	<table>
		<tr>
			<th>순번</th>
			<th>노래제목</th>
			<th>재생 시간</th>
			<th>작사가</th>
			<th>작곡가</th>
			<th>가수</th>
			<th>데뷔</th>
			<th>소속사</th>
			<th>앨범 발매일</th>
			<th>트랙수</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${songList}" var="song">
		<tr>
			<td>${song.id}</td>
			<td>${song.title}</td>
			<td>${song.playTime}</td>
			<td>${song.lyricist}</td>
			<td>${song.composer}</td>
			<td>${song.name}</td>
			<td>${song.debut}</td>
			<td>${song.agency}</td>
			<td>${song.releaseDate}</td>
			<td>${song.tracks}</td>
			<td><a href="/day10/detail_view?id=${song.id}">수정</a></td>
			<td><button type="button" onclick="deleteBtn(this)" class="delete-btn" data-song-id="${song.id}">삭제</button></td>
		</tr>
		</c:forEach>
	</table>
	
	<script>
		function deleteBtn(obj) {
			var id = $(obj).data('song-id');
			//alert(id);
			
			$.ajax ({
				type: 'delete'
				,url : '/day10/delete'
				,data : {'id' : id}
				,success: function(data) {
					if (data.result == 'success') {
						alert('삭제성공');
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