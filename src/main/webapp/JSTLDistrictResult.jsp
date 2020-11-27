<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>District Wise Cases</title>
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
	<%-- 	<h3>Cases All Over The District</h3>
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
 --%>
	<div class="container">
		<h1 class="text-center text-warning" style="padding: 10px">Cases
			All Over The District</h1>
		<table
			class="table table-bordered table-hover table-striped table-reponsive-sm">
			<thead>
				<tr class="bg-dark">
					<th class="text-center text-white">Code</th>
					<th class="text-center text-white">DistrictName</th>
					<th class="text-center text-white">StateName</th>
					<th class="text-center text-white">TotalCases</th>
					<th class="text-center text-white">TotalActiveCases</th>
					<th class="text-center text-white">Recovery</th>
					<th class="text-center text-white">Deaths</th>
					<th class="text-center text-white">Update</th>
					<th class="text-center text-white">Delete</th>
					<th class="text-center text-white">Cities</th>
				</tr>
			</thead>
			<jstl:forEach items="${districts}" var="district">
				<tbody>
					<tr>
						<td class="text-center">${district.code}</td>
						<td class="text-center">${district.districtName}</td>
						<td class="text-center"><a
							href="searchState?code=${district.state.code}">${district.state.stateName}</a></td>
						<td class="text-center">${district.totalCase}</td>
						<td class="text-center">${district.totalActiveCase}</td>
						<td class="text-center">${district.recovery}</td>
						<td class="text-center">${district.death}</td>
						<td class="text-center"><a
							href="districtUpdate?code=${district.code}">Update</a></td>
						<td class="text-center"><a
							href="districtDelete?code=${district.code}">Delete</a></td>
						<td class="text-center"><a
							href="getAllCityByDistrictId?itemPerPage=1000&districtid_fk=${district.code}">Cities</a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<a href="getAllStateCases">State Wise</a> <br> <a
			href="adminDashBoard">AdminDashBoard</a> <br> <a
			href="index.jsp">Home</a>
	</div>
</body>
</html>