<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>displayFlights</title>
<style>
table {
	border-collapse: collapse;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

th, td, h2,h3{
	text-align:center;
	padding:5px;
}

tr:nth-child(even){background-color: #e6f7ff}

th{
	background-color: #006699;
	color:white;
}

div{text-align: center;}
</style>
</head>
<body>
	<h2>Flight search Results</h2>
	
	<table border="1">
	<tr>
		<th>Departure City</th>
		<th>Arrival City</th>
		<th>Airline</th>
		<th>Flight ID</th>
		<th>Departure schedule</th>
		<th>Book Flight</th>
	</tr>
	<c:forEach items="${findFlights}" var="findFlights">
	<tr>
		<td>${findFlights.departureCity}</td>
		<td>${findFlights.arrivalCity}</td>
		<td>${findFlights.operatingAirlines}</td>
		<td>${findFlights.flightNumber}</td>
		<td>${findFlights.estimatedDepartureTime}</td>
		<td><a href="showCompleteReservation?flightId=${findFlights.id}">Book Now </a></td>
	</tr>
	</c:forEach>
	</table>
	
</body>
</html>