<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	2) 스크립트릿 (Scriptlet)
		[표현식]
		<%
			필요한 자바프로그램 삽입
			- 지역변수선언, if, for, while ...등
		%>
 --%>
<%  // ! 느낌표가 없으면 지역변수
	// 변수선언 지역변수
	String name = "이한글";
	int num = 3;
	boolean bool = true;
	double dou = 3.14;
	int num2;
%>

<%-- 반드시 선언한 후에 사용가능 --%>
나의 이름은 <%=name%>입니다<br>
<%=num%>년차 재직중입니다<br>
남자입니까? <%=bool%><br>
원주율은? <%=dou%>입니다

<%!
	int one;       // 기본값 : 0
	String msgOne; // 기본값 : null
%>
<%
	int two = 54;  // 기본값 : 없음. 값을 넣지 않으면 오류가 뜸
	String msgTwo = "Scriptlet Example";
%>
</body>
</html>