<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	float f = 5.78f;
	int num = Math.round(f);
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	
	int one = 83;
	int two = 43;
%>
<%!
	public int op(int i, int j) {
		return i > j ? i : j;
}
%>
실수 5.78의 반올림한 값은? <%=num %><br>
현재의 날짜와 시간은? <%=date.toString()%><br>
지금은 오전일까요? 오후일까요? <%=(hour <12) ? "오전" : "오후" %><br>
두 수중 큰숫자는? <%=op(one, two)%>









</body>
</html>