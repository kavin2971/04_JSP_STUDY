<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>

</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js"></script>
</head>
<body>
<form method="post" name="regFrm" action="02.2.MemProc.jsp"></form>
	<table border="1">
		<tr>
			<th colspan="3" style="background-color: chartreuse;">회원가입</th>
		</tr>
		<tr> 
			<td>아이디</td>
			<td><input name="id"></td>
			<td>아이디를 적어주세요 (20자 이내로 한글 입력안됨)</td>
			
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd"></td>
			<td>비밀번호를 적어주세요(문자,숫자,특기호가 반드시 1개이상 넣으세요)</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="checkpwd"></td>
			<td>위에 비밀번호와 동일한 비밀번호를 입력하세요</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name"></td>
			<td>이름 입력하세요</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input name="birthday"></td>
			<td>생년월일을 입력하세요 (ex. 02/04/28)</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email"></td>
			<td>이메일 주소를 입력하세요</td>
		</tr>
		<tr>
			<td><input type="button" value="회원가입" onclick="inputCheck();">
			<td><input type="reset" value="다시쓰기"></td>
		</tr>
	</table>
</body>
</html>