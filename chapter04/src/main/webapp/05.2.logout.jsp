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
	session.invalidate();
	response.sendRedirect("05.1.login.jsp");
%>

	<script>

    	window.onbeforeunload = function() {
			return "세션이 종료됩니다.";
		};
	
	</script>

</body>
</html>