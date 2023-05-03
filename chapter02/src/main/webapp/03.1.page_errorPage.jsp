<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="03.2. page_userErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int zero = 0, one = 2;
%>

<h1>page ErrorPage</h1>
<p>one와 zero의 사칙연산</p>
<p>one + zero = <%=one+zero %></p>
<p>one - zero = <%=one-zero %></p>
<p>one * zero = <%=one*zero %></p>
<p>one / zero = <%=one/zero %></p>

</body>
</html>