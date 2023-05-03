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
	<h3>모든 혈액형의 성격입니다</h3>
	<p>
	 AB형 : a형 성격과 b형성격을 다가지고 잇음.가장 파악하기 힘든 성격.<br>
	 	   천재 아니면 바보라는 말도 잇음.이글보고 계신 당신이 ab형이라면 <br>
	 	   천재인지 생각해보시고,천재가 아니라면 당신은 바보.<br>
	</p>
</body>
</html>