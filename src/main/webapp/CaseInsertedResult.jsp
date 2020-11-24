<%@page isELIgnored="false"%>
<html>
<head>
<title>Case Details</title>
</head>
<body>
	<h2>City Case Details Stored</h2>
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
			<td>${cityInserted.code}</td>
			<td>${cityInserted.cityName}</td>
			<td>
				<%-- ${cityInserted.district} --%>
			</td>
			<td>
				<%-- ${cityInserted.state} --%>
			</td>
			<td>${cityInserted.totalCase}</td>
			<td>${cityInserted.totalActiveCase}</td>
			<td>${cityInserted.recovery}</td>
			<td>${cityInserted.death}</td>
			<td><a href="cityUpdate?code=${cityInserted.code}">Update</a></td>
			<td><a href="cityDelete?code=${cityInserted.code}">Delete</a></td>
		</tr>
	</table>
	<hr>
	<a href="insertCityPage">Add Another City Case</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>
