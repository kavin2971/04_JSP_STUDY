<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page='<%=bloodType+".jsp"%>'>
	<jsp:param name="name" value="<%=name %>" />
	<jsp:param name="bloodType" value="<%=bloodType%>" />
	</jsp:forward>
</body>
</html>