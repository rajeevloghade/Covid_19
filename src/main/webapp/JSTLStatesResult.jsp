<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>State Wise Cases</title>
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
	<%-- 	<h3>Cases All Over The State</h3>
	<hr>
	<table border="2">
		<tr>
			<th>Code</th>
			<th>StateName</th>
			<th>TotalCases</th>
			<th>TotalActiveCases</th>
			<th>Recovery</th>
			<th>Deaths</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Districts</th>
			<th>Cities</th>
		</tr>
		<jstl:forEach items="${states}" var="state">
			<tr>
				<td>${state.code}</td>
				<td>${state.stateName}</td>
				<td>${state.totalCase}</td>
				<td>${state.totalActiveCase}</td>
				<td>${state.recovery}</td>
				<td>${state.death}</td>
				<td><a href="stateUpdate?code=${state.code}">Update</a></td>
				<td><a href="stateDelete?code=${state.code}">Delete</a></td>
				<td><a href="getAllDistrictByStateId?stateid_fk=${state.code}">Districts</a></td>
				<td><a href="getAllCityByStateId?stateid_fk=${state.code}">Cities</a></td>
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
			All Over The State</h1>
		<table
			class="table table-bordered table-hover table-striped table-reponsive-sm">
			<thead>
				<tr class="bg-dark">
					<th class="text-center text-white">Code</th>
					<th class="text-center text-white">StateName</th>
					<th class="text-center text-white">TotalCases</th>
					<th class="text-center text-white">TotalActiveCases</th>
					<th class="text-center text-white">Recovery</th>
					<th class="text-center text-white">Deaths</th>
					<th class="text-center text-white">Update</th>
					<th class="text-center text-white">Delete</th>
					<th class="text-center text-white">Districts</th>
					<th class="text-center text-white">Cities</th>
				</tr>
			</thead>
			<jstl:forEach items="${states}" var="state">
				<tbody>
					<tr>
						<td class="text-center">${state.code}</td>
						<td class="text-center">${state.stateName}</td>
						<td class="text-center">${state.totalCase}</td>
						<td class="text-center">${state.totalActiveCase}</td>
						<td class="text-center">${state.recovery}</td>
						<td class="text-center">${state.death}</td>
						<td class="text-center"><a
							href="stateUpdate?code=${state.code}">Update</a></td>
						<td class="text-center"><a
							href="stateDelete?code=${state.code}">Delete</a></td>
						<td class="text-center"><a
							href="getAllDistrictByStateId?itemPerPage=1000&stateid_fk=${state.code}">Districts</a></td>
						<td class="text-center"><a
							href="getAllCityByStateId?itemPerPage=1000&stateid_fk=${state.code}">Cities</a></td>

					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<a href="adminDashBoard">AdminDashBoard</a> <br> <a
			href="index.jsp">Home</a>
	</div>
</body>
</html>