<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
%>
   <script>
    	alert("로그아웃 되었습니다");

    </script>
<% 
session.invalidate();
response.sendRedirect("05.1.sessionLogin.jsp");
%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>