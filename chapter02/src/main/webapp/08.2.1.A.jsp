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
	A형 : 내성적 성격에 소심하며, 뒤끝도 좀길게 가는편.<br>
		 반면 세심하고 꼼꼼하여 일 추진에 잇어 상당 심사숙고 하여 추진력은 떨어지나, <br>
		 일단 시작하면 성공률 높으며,직장에서 인정받음.연애에 잇어선 좋으면서도 속을 <br>
		 잘 안들어내어 시작하기 어려우며,일단 선택햇으면 치밀한 작전으로 거의 승리.<br>
	</p>
</body>
</html>