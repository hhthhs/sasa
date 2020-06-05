<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시판 등록 -->
<form action="BoardInsertAction.do" method="post">
	id : <input type="text" name="d_id">
	제목 : <input type="text" name="d_title">
	내용 : <input type="text" name="d_content">
</form>
<!-- 게시판 등록 -->
</body>
</html>