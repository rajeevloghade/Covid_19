<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>City Wise Cases</title>
</head>
<body>
	<h3>Cases All Over The Cities</h3>
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
		</tr>
		<jstl:forEach items="${cities}" var="city">
			<tr>
				<td>${city.code}</td>
				<td>${city.cityName}</td>
				<td><a href="searchDistrictForUser?code=${city.district.code}">${city.district.districtName}</a></td>
				<td><a href="searchStateForUser?code=${city.state.code}">${city.state.stateName}</a></td>
				<td>${city.totalCase}</td>
				<td>${city.totalActiveCase}</td>
				<td>${city.recovery}</td>
				<td>${city.death}</td>
			</tr>
		</jstl:forEach>
	</table>
	<hr>
	<a href="paginationOfDistrict?startPage=0&itemPerPage=5">District
		Wise</a>
	<br>
	<a href="paginationOfState?startPage=0&itemPerPage=5">State Wise</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>