<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 주석 -->
<%-- jsp 주석 --%>
<%! 
  	 /* ! 느낌표가 들어가면 먼저 실행된다
		선언이 아래로 내려가도 먼저 실행됨*/
	String name = "홍길동";
	String class1 = "공공데이터 융합 웹 애플리케이션 개발자 양성과정";
	int num = 2;
%>

<!-- 나의 이름은 <%= name %> 입니다 <br> 주석은 html만 주석처리됨--> 
<%-- 나의 이름은 <%= name %> 입니다 <br> 주석은 html,jsp 모두 주석처리됨--%>
나의 이름은 <%= name %> 입니다 <br>
과정명은 <%= class1 %> 입니다<br>
과정은 <%= num %>번째 과정입니다. 
</body>
</html>

