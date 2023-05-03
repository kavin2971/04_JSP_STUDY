<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션태그 파라미터-1 2번째페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
	<h1>Include ActionTag Parameter</h1>
	<jsp:include page="06.3.action_includeTagParameter.jsp">
		<jsp:param value="JSP 수업" name="siteName"/>
		<jsp:param value="010-1234-5678" name="siteTel"/>
	</jsp:include>
	<%-- jsp: 은이벤트가 발생될때 사용된다
		<jsp:include page="06.3.action_includeTagParameter.jsp">
		<jsp:param value="<%=siteName%>" name="siteName"/>
		<jsp:param value="<%=siteTel%>" name="siteTel"/>
		</jsp:include>
	 --%>
	<hr>
	include ActionTag의 Body 입니다. <br>
	사이트 이름 : <%=siteName %><br>
	사이트 전화 : <%=siteTel %><br>
</body>
</html>