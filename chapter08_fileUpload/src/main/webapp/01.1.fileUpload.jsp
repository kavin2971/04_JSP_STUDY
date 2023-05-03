<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="01.2.fileUploadView.jsp">
		<table>
			<tr>
				<td>이름 :</td>
				<td><input name="user"></td>
			</tr>
			 <tr>
				<td>타이틀 :</td>
				<td><input name="title"></td>
			</tr>
			<tr>
				<td>파일 :</td>
				<td><input type="file" name="uploadfile"></td>
			</tr>
			 <tr>
				<td><input type="submit" value="업로드"></td>
				<td></td>
			</tr>
		
		</table>
	</form>
</body>
</html>