<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="5kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Out Example</h1>
<%
	int totalBuffer = out.getBufferSize();
	int remainBuffer = out.getRemaining();
	int useBuffer = totalBuffer - remainBuffer;
%>

	현재 페이지의 buffer 상태 </p>
	출력 Buffer의 전체 크기 : <%=totalBuffer%>byte</p>
	남은 Buffer의 크기 : <%=remainBuffer%>byte</p>
	현재 Buffer의 사용량 : <%=useBuffer%>byte
</body>
</html>