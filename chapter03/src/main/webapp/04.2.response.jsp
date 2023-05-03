<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	Cache 캐시
  -->  
<%
	if(request.getProtocol().equals("HTTP/1.0"))
		response.setHeader("Pragma", "no-cache");	// 버전이 http 1.0
	else if(request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control","no-store");
	
%>
	04.2.response.jsp 파일입니다.
</body>
</html>