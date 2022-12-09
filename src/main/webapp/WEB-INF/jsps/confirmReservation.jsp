<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
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
h3 {
	text-align: center;
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
		<h2>Congratulations! Your Ticket is Booked.</h2>
		
		<h3>Passenger Details</h3>
		<table>
			<tr>
				<td>First Name :</td>
				<td>${firstName}</td>
			</tr>
			<tr>
				<td>Middle Name :</td>
				<td>${middleName}</td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td>${lastName}</td>
			</tr>
			<tr>
				<td>Email :</td>
				<td>${email}</td>
			</tr>
			<tr>
				<td>Phone No.: </td>
				<td>${phone}</td>
			</tr>
		</table>
			
		<h3>Flight Details</h3>
		<table>
			<tr>
				<td>Flight ID :</td>
				<td>${flightNumber}</td>
			</tr>
			<tr>
				<td>Airline :</td>
				<td>${operatingAirlines}</td>
			</tr>
			<tr>
				<td>Departure City :</td>
				<td>${departureCity}</td>
			</tr>
			<tr>
				<td>Arrival City :</td>
				<td>${arrivalCity}</td>
			</tr>
			<tr>
				<td>Departure Time :</td>
				<td>${estimatedDepartureTime}</td>
			</tr>
	</table>		
</body>
</html>