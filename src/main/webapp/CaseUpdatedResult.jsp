<%@page isELIgnored="false"%>
<html>
<head>
<title>Case Details</title>
</head>
<body>
	<h2>City Case Details Updated</h2>
	<hr>
	<table border="2">
		<tr>
			<th>Code</th>
			<th>cityName</th>
			<th>District</th>
			<th>State</th>
			<th>TotalCases</th>
			<th>TotalActiveCases</th>
			<th>Recovery</th>
			<th>Deaths</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<tr>
			<td>${searchedCity.code}</td>
			<td>${searchedCity.cityName}</td>
			<td>
				<%-- ${cityInserted.district} --%>
			</td>
			<td>
				<%-- ${cityInserted.state} --%>
			</td>
			<td>${searchedCity.totalCase}</td>
			<td>${searchedCity.totalActiveCase}</td>
			<td>${searchedCity.recovery}</td>
			<td>${searchedCity.death}</td>
			<td><a href="cityUpdate?code=${searchedCity.code}">Update</a></td>
			<td><a href="cityDelete?code=${searchedCity.code}">Delete</a></td>
		</tr>
	</table>
	<hr>
	<a href="insertCityPage">Add Another City Case</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>
