<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Join</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f1f1f1;
		}
		h1 {
			color: #333;
			font-size: 2em;
			text-align: center;
			margin-top: 50px;
		}
		form {
			max-width: 400px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 2px 5px rgba(0,0,0,0.1);
		}
		label {
			display: block;
			margin-bottom: 10px;
			color: #666;
			font-size: 1.1em;
		}
		input[type="text"], input[type="email"], input[type="password"] {
			padding: 10px;
			margin-bottom: 20px;
			border-radius: 5px;
			border: none;
			width: 100%;
			font-size: 1.1em;
			box-shadow: 0 2px 5px rgba(0,0,0,0.1);
		}
		input[type="submit"] {
			background-color: #333;
			color: #fff;
			border: none;
			border-radius: 5px;
			padding: 10px;
			font-size: 1.1em;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #555;
		}
	</style>
</head>
<body>
	<h1>Join Us</h1>
	<form action="join_process.jsp" method="post">
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required>
		<input type="submit" value="Join">
	</form>
</body>
</html>