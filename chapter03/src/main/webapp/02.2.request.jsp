<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미선택 체크박스 JSP</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
  //                                        ↙ getParameterValues = 여러개의 파라메타 벨류값을 가져올때 사용
	String hobby[] = request.getParameterValues("hobby");
	/*
	out.print("당신의 취미는");
	for(int i=0; i<hobby.length; i++){
		out.print(hobby[i]+ ", ");
	}
	out.print ("입니다");
	*/
	%>

	당신의 취미는
<%
	for(int i=0; i<hobby.length; i++){
%>
		<%=hobby[i]%>,
<%
	}
%>
	입니다
	

</body>
</html>