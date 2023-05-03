<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = "KH정보교육원 화이팅";	
%>

	include ActionTag의 Body 부분입니다.<br>
	<%=name %>
	<hr>
		<jsp:include page="05.3.action_icludeTag.jsp"></jsp:include><br>
</body>
</html>