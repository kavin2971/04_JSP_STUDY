<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idkey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   body{
   	background-color:beige;
   }
</style>
</head>
<body>
<%
	if(id != null) {
%>
	<h4><%=id %>님 환영합니다🎊🎊 </h4>
	수고하셨습니다<p/>
	더이상 페이지는 없습니다<p/>
	<a href="logout.jsp">로그아웃</a>
<%		
	} else {
%>
    <form method="post" action="loginProc.jsp" name="loginFrm">    
        <table align="center">
            <tr>
                <th colspan="3" style="background-color: lightgreen;"><h3><b>로그인</b></h3></th>
            </tr>
            <tr>
                <td>아 이 디</td>
                <td colspan="2"><input name="id" required autofocus placeholder="아이디를 입력하세요"> </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td colspan="2"><input name="pwd" required type="password" placeholder="비밀번호를 입력하세요"> </td>
            </tr> 
            <tr>
                <td></td>
                <td align="right">
                    <input type="submit" value="로그인"> <input type="button" value="회원가입" onclick="location.href='member.jsp'">
                </td> 
            </tr>
        </table>
    </form>
<%}%>
</body>
</html>