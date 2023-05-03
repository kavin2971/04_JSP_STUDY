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
	O형 : 털털하고 쿨함.특유의 활발한 성격으로,주변에 인기가 많으며 추진력강한 행동파로,<br>
		 무리의 리더가 돼기쉬우며, 좋아 하는 이성에게도 적극적임.반면 덜렁끼도 잇어서 <br>
		 실수가 잦고,일단 저지르고 보는 기분파.<br>
	</p>
</body>
</html>