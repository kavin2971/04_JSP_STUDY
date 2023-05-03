<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- ↑ 위에 명시된게 기본적인 페이지 지시 -->  

<%-- <%@ page info= "JSP 현재 페이지 정보" import= "java.util.*"%>
 <!-- 기본적인 페이지 지시자는 왠만해서 건들지(합치지) 않는다 -->   --%>
 

<%@ page info= "JSP 현재 페이지 정보"%>
<%@ page session="false"%>		
<%@ page buffer="16kb"%>		
<%@ page autoFlush="true"%>		
<%@ page import="java.util.*"%>
<%@ page trimDirectiveWhitespaces="true" %>


<style>
 body{font-size:50px;}
 h1{font-size:100px;}
</style>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Page 지시자 info </h1>
<%=this.getServletInfo() %>

<h1>page 지시자 import</h1>
<%
	Date date = new Date();
%>
현재 시간과 날짜? <%=date.toLocaleString() %>








</body>
</html>