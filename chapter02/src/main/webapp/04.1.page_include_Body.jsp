<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	* include 지시자
	 - 포함시키는 다른 파일(jsp, html)등을 하나로 합쳐서 컴파일하여 하나의 파일로 보여줌
	 [표현법]
	 <%@ include file="포함시킬 파일명" %>
 --%>
	<%@ include file="04.2.page_include_Top.jsp" %>
	<hr>
	include 지시자의 body 부분입니다<br>
	<hr>
	<%@ include file="04.3.page_include_Bottom.jsp" %>
</body>
</html>