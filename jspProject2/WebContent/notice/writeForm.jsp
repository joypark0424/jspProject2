<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록</title>
<!-- BootStrap라이브러리는 sitemesh - default)decorator.jsp 에서 통합적으로 등록해서 사용하도록 한다 -->
</head>
<body>
<div class="container">
	<h1>공지 등록</h1>
	<form action="write.jsp" method="post">
		<div class="form-group">
			<label for="title">제목</label>
			<input name="title" id="title" class="form-control">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea name="content" id="content" class="form-control" rows="7"></textarea>
		</div>
		<div class="form-group">
			<label for="startDate">공지시작일</label>
			<input name="startDate" id="startDate" class="form-control" type="date">
		</div>
		<div class="form-group">
			<label for="endDate">공지종료일</label>
			<input name="endDate" id="endDate" class="form-control" type="date">
		</div>
		<button class="btn btn-default">등록</button>
	</form>
</div>
</body>
</html>