<%@page isELIgnored="false"%>
<html>
<head>
<title>Admin Dashboard</title>
</head>
<body>
	<h2>Welcome ${AdminEmail} to Admin Page</h2>
	<h3>
		For all operation performed by Registered Admin Only.
		<hr>
		<a href="getAllCases">View All City Info</a><br> <a
			href="getAllDistrictCases">View All District Info</a><br> <a
			href="getAllStateCases">View All State Info</a><br> <a
			href="insertStatePage">Insert New State Data</a><br> <a
			href="insertDistrictPage">Insert New District Data</a><br> <a
			href="insertCityPage">Insert New City Data</a><br> <a href="logout">Logout</a><br>
		<hr>
	</h3>
</body>
</html>
