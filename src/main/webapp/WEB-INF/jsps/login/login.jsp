<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
table {
	border-collapse: collapse;
	width: 30%;
	margin-left: auto;
	margin-right: auto;
}

td {
	text-align: center;
}

tr:nth-child(odd) {
	background-color: #e6f7ff
}

th, h2 {
	text-align: center;
	padding: 5px;
	background-color: #006699;
	color: white;
}

h2 {
	text-align: center;
	padding: 5px;
	background-color: #006699;
	color: white;
	width: 30%;
	margin-left: auto;
	margin-right: auto;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<h2>Login</h2>
	${error}
	<form action="verifyLogin" method="post">
		<table>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="LOGIN">
		</p>
	</form>

</body>
</html>