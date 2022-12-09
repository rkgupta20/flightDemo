<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style>
table {
	border-collapse: collapse;
	width: 60%;
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
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<h2>New Registration</h2>
	<form action="saveReg" method="post">
		<table>
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="firstName"></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lastName"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="SAVE">
		</p>
	</form>
</body>
</html>