<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>City Wise Cases</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%-- 	<h3>Cases All Over Cities</h3>
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
 --%>

	<div class="container">
		<h1 class="text-center text-warning" style="padding: 10px">Cases
			All Over The District</h1>
		<table
			class="table table-bordered table-hover table-striped table-reponsive-sm">
			<thead>
				<tr class="bg-dark">
					<th class="text-center text-white">Code</th>
					<th class="text-center text-white">CityName</th>
					<th class="text-center text-white">District</th>
					<th class="text-center text-white">State</th>
					<th class="text-center text-white">TotalCases</th>
					<th class="text-center text-white">TotalActiveCases</th>
					<th class="text-center text-white">Recovery</th>
					<th class="text-center text-white">Deaths</th>
					<th class="text-center text-white">Update</th>
					<th class="text-center text-white">Delete</th>
				</tr>
			</thead>
			<jstl:forEach items="${cities}" var="city">
				<tbody>
					<tr>
						<td class="text-center">${city.code}</td>
						<td class="text-center">${city.cityName}</td>
						<td class="text-center"><a
							href="searchDistrict?code=${city.district.code}">${city.district.districtName}</a></td>
						<td class="text-center"><a
							href="searchState?code=${city.state.code}">${city.state.stateName}</a></td>
						<td class="text-center">${city.totalCase}</td>
						<td class="text-center">${city.totalActiveCase}</td>
						<td class="text-center">${city.recovery}</td>
						<td class="text-center">${city.death}</td>
						<td class="text-center"><a
							href="cityUpdate?code=${city.code}">Update</a></td>
						<td class="text-center"><a
							href="cityDelete?code=${city.code}">Delete</a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<a href="index.jsp">Home</a>
	</div>
</body>
</html>