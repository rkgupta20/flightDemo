<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Page</title>
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
	<h2>Flight Details</h2>
	<table border="1">
		<tr>
			<th>Flight ID</th>
			<th>Airline</th>
			<th>Departure City</th>
			<th>Arrival City</th>
			<th>Departure Date</th>
			<th>Departure Time</th>
		</tr>
		<tr>
			<td>${flight.flightNumber}</td>
			<td>${flight.operatingAirlines}</td>
			<td>${flight.departureCity}</td>
			<td>${flight.arrivalCity}</td>
			<td>${flight.dateOfDeparture}</td>
			<td>${flight.estimatedDepartureTime}</td>
		</tr>
	</table>
	<h2>Enter Passenger Details</h2>
	<form action="confirmReservation" method="post">
		<table>
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="firstName"></td>
			</tr>
			<tr>
				<td>Middle Name :</td>
				<td><input type="text" name="middleName"></td>
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
				<td>Phone No. :</td>
				<td><input type="text" name="phone"></td>
			</tr>
		</table>
		<input type="hidden" name="flightId" value="${flight.id}">
		<h2>Enter Card Details</h2>
		<table>
			<tr>
				<td>Name on the Card:</td>
				<td><input type="text" name="cardName"></td>
			</tr>
			<tr>
				<td>Card Number :</td>
				<td><input type="text" name="cardNumber"></td>
			</tr>
			<tr>
				<td>CVV</td>
				<td><input type="text" name="cvv"></td>
			</tr>
			<tr>
				<td>Expiry Date :</td>
				<td><input type="text" name="expiryDate"></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="Complete Reservation">
		</p>
	</form>
</body>
</html>