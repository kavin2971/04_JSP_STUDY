<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션태그 파라미터-2 2번째페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<h1>Include ActionTag Parameter</h1>
	<jsp:include page="06.3.action_includeTagParameter.jsp"/>
	<hr>
	include ActionTag의 Body 입니다. <br>
</body>
</html>