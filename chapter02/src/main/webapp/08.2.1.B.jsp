<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
	<h3><%=name %>님의 혈액형은  <%=bloodType %>형의 성격입니다</h3>
	<p>
	B형 : 고지식한 성격에,모 아니면 도.융통성 부족하나 바른생활의 표본,<br>
		 헛짓거리 잘안하며 가정적.한여자.한남자만 바라보며 바람필 가능성 <br>
		 가장적은 이상적 배우자<br>
	</p>
</body>
</html>