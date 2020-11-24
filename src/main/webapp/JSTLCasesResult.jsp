<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>City Wise Cases</title>
</head>
<body>
	<h3>Cases All Over Cities</h3>
	<hr>
	<table border="2">
		<tr>
			<th>Code</th>
			<th>CityName</th>
			<th>District</th>
			<th>State</th>
			<th>TotalCases</th>
			<th>TotalActiveCases</th>
			<th>Recovery</th>
			<th>Deaths</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<jstl:forEach items="${cities}" var="city">
			<tr>
				<td>${city.code}</td>
				<td>${city.cityName}</td>
				<td><a href="searchDistrict?code=${city.district.code}">${city.district.districtName}</a></td>
				<td><a href="searchState?code=${city.state.code}">${city.state.stateName}</a></td>
				<td>${city.totalCase}</td>
				<td>${city.totalActiveCase}</td>
				<td>${city.recovery}</td>
				<td>${city.death}</td>
				<td><a href="cityUpdate?code=${city.code}">Update</a></td>
				<td><a href="cityDelete?code=${city.code}">Delete</a></td>
			</tr>
		</jstl:forEach>
	</table>
	<hr>
	<a href="adminDashBoard">AdminDashBoard</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>