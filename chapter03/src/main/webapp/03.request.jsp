<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 내장 메소드</title>
</head>
<body>

	<%
		String protocol = request.getProtocol();
		String serverName = request.getServerName();
		int serverPort = request.getServerPort();
		String remoteAddr = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
	%>
	
	<h1>Request 내장 Method</h1>
	       프로토콜: <%=protocol %></p>
	     서버의 이름: <%=serverName%></p>
      서버의 포트번호: <%=serverPort%></p>
 클라이언트 컴퓨터 주소: <%=remoteAddr%></p>
 클라이언트 컴퓨터 이름: <%=remoteHost%></p>

	 요청경로(URL) : <%=request.getRequestURI()%></p>
	 요청경로(URL) : <%=request.getRequestURI()%></p>
	 
	<%= "현재 사용하는 브라우져 : " + request.getHeader("User-Agent")+"</p>" %>
	<%= "브라우저가 사용하는 파일 타입 : " + request.getHeader("Accept")+"</p>" %> 
	
<!-- 
      getParameterValues = 여러개의 파라메타 벨류값을 가져올때 사용

 -->	
	
</body>
</html>