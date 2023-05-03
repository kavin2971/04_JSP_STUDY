<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인/로그아웃</title>
</head>
<body>
	<h1>login과 logout 하기</h1>

	<%
	String id = (String) session.getAttribute("idkey");
	if (id != null) {
		out.print(id + "님 반갑습니다");
	%>


	<p/>
	<a href="05.2.logout.jsp" onclick="out()">로그아웃</a>
	<script>

	/* 	function out() {
			alert("로그아웃");
		} */
			
    	window.onbeforeunload = function() {
			return "세션이 종료됩니다. 진행하시겠습니까?";
		};
	
	</script>

	<%
	} else {
	%>
	 
	<form method="post" action="loginServlet">
		id : <input name="id" required></p>
		pw : <input type="password" name="pwd" required></p>
		<input type="submit" value="로그인"> 
		<input type="reset">
	</form>
	
	<%
	}
	%>
<!-- 
	<form method="post" action="loginServlet">
		id : <input name="id"></p>
		pw : <input type="password" name="pwd"></p>
		<input type="submit" value="로그인"> <input type="reset">
	</form>
 -->	
</body>
</html>