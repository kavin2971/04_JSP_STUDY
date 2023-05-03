<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

session.setAttribute("idKey", id);
session.setMaxInactiveInterval(60 * 5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="07.3.session.jsp">
 1. 가장 좋아하는 계절은? </p>
 <input type="radio" name="season" value="봄" id="a">
 <label for="a">🌻 봄</label>
 <input type="radio" name="season" value="여름" id="b">
 <label for="b">⛱ 여름</laber>
 <input type="radio" name="season" value="가을" id="c" checked>
 <label for="c">☔ 가을</laber>
 <input type="radio" name="season" value="겨울" id="d">
 <label for="d">❄ 겨울</laber></p></p>
 
2. 가장 좋아하는 과일은? </p>
 <input type="radio" name="fruit" value="사과" id="e" >
 <label for="e">🍎 사과</label>
 <input type="radio" name="fruit" value="딸기" id="f">
 <label for="f">🍓 딸기</laber>
 <input type="radio" name="fruit" value="포도" id="g" checked>
 <label for="g">🍇 포도</label>
 <input type="radio" name="fruit" value="수박" id="h">
 <label for="h">🍉 수박</label></p></p>

<input type="submit" value="전송">
</form>
</body>
</html>