<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String season = request.getParameter("season");
String fruit = request.getParameter("fruit");

String id = (String) session.getAttribute("idKey");
String sessionId = session.getId();
int intervalTime = session.getMaxInactiveInterval();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(id != null){
%>
	<h1>Session Example</h1>
		<%=id %>님이 좋아하는 계절과 과일은 <%=season %>과 <%=fruit %>입니다.</P>
		세션의 ID : <%=sessionId %></p>
		세션유지시간 : <%=intervalTime %>초 </p>
<% 		
		session.invalidate();
	} else {
		out.print("<h2><b>세션이 만료되었습니다.</b></h2>(세션시간이 경과하였거나 다른이유로 연결할 수 없습니다.)");
	}
%>

</body>
</html>