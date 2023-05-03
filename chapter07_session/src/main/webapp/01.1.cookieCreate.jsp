<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//주의할점.  쿠키의값에 띄어쓰기,특수기호 사용불가능.    한글가능
	Cookie cookie = new Cookie("myCookie", "Apple");
	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Cookie를 이용한 세션연결</h1>
	쿠키를 만듭니다 <p/>
	쿠키내용은 <a href="01.2.testCookie.jsp"> 클릭하세요 </a>
</body>
</html>