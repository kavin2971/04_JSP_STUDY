<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
 font-size: 20px;
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
    font-style: 궁서체;
	font-size: 100px;
	font-weight:bold;
	}
	
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	int count = Integer.parseInt(request.getParameter("count"));	
	// 객체 => 일반자료형 int   integer.parseInt()
	// double => int   (int)

	int i = 1;
	while(count >= i) {
%>
		<%= i + "." + msg%><br>
<% 
		i++;
	}
	
%>

</body>
</html>