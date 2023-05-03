<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
 <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%> 

<style>
 #tb{
	margin-top : 300px;
	margin-left : 750px;
	}
</style>
<jsp:useBean id="regMgr" class="session07.RegisterMgr" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
request.setCharacterEncoding("UTF-8");

String id = (String)session.getAttribute("idkey");


	if(id != null){		
	session.setAttribute("idkey", id);
%>
<script>
	alert("이미 로그인이 되어있습니다.");
	location.href="05.3.sessionLoginOK.jsp";
</script>
<%
			
	} else {
%>


	<form method="post" action="SessionLogin">
		<table id ="tb">
			<tr>
				<td colspan="2"><h1>Session Login</h1></td>					
			</tr>
			<tr>
				<th>ID :</th>
				<td> <input name="id" required></td>
			</tr>
			<tr>
				<th>PW :</th>
				<td><input type="password" name="pwd" required></td>		
			</tr>
			<tr>
				<td> </td>
				<td> </td>		
			</tr>
			<tr>
				<td> </td>	
				<td><input type="submit" value="로그인" class="btn btn-outline-danger"></td>
			
			</tr>
		</table>
		
		
	</form>
<%
	}
%>
</body>
</html>