<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>District Wise Cases</title>
</head>
<body>
	<h3>Cases All Over The District</h3>
	<hr>
	<table border="2">
		<tr>
			<th>Code</th>
			<th>DistrictName</th>
			<th>State</th>
			<th>TotalCases</th>
			<th>TotalActiveCases</th>
			<th>Recovery</th>
			<th>Deaths</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Cities</th>
		</tr>
		<jstl:forEach items="${districts}" var="district">
			<tr>
				<td>${district.code}</td>
				<td>${district.districtName}</td>
				<td><a href="searchState?code=${district.state.code}">${district.state.stateName}</a></td>
				<td>${district.totalCase}</td>
				<td>${district.totalActiveCase}</td>
				<td>${district.recovery}</td>
				<td>${district.death}</td>
				<td><a href="districtUpdate?code=${district.code}">Update</a></td>
				<td><a href="districtDelete?code=${district.code}">Delete</a></td>
				<td><a
					href="getAllCityByDistrictId?districtid_fk=${district.code}">Cities</a></td>
			</tr>
		</jstl:forEach>
	</table>
	<hr>
	<a href="getAllStateCases">State Wise</a>
	<br>
	<a href="adminDashBoard">AdminDashBoard</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>