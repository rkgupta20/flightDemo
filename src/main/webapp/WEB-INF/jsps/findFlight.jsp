<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flights Page</title>
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
	<h2>Find Flights</h2>
	<form action="findFlights" method="post">
		<table>
			<tr>
				<td>From :</td>
				<td><input type="text" name="from" /></td>
			</tr>
			<tr>
				<td>To :</td>
				<td><input type="text" name="to" /></td>
			</tr>
			<tr>
				<td>Departure Date:</td>
				<td><input type="text" name="departureDate"
					placeholder="MM-DD-YYYY" /></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="Search">
		</p>
	</form>

</body>
</html>