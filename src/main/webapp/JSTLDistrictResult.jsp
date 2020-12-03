<!------- Navigation Bar -------->
<%@include file="NavigationBarAdmin.jsp"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>District Wise Cases</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

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

	<!--------------------------------- TABLE ---------------------------------------->
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
							href="districtUpdate?code=${district.code}"><i
								class="fas fa-pencil-alt"></i></a></td>
						<td class="text-center"><a
							href="districtDelete?code=${district.code}"><i
								class="fas fa-trash-alt"></i></a></td>
						<td class="text-center"><a
							href="getAllCityByDistrictId?itemPerPage=1000&districtid_fk=${district.code}">Cities</a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<a href="insertDistrictPage" style="text-decoration: none;">Add
			More District / </a> <a href="adminDashBoard"
			style="text-decoration: none;">Admin Dashboard</a>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="User/Footer.jsp"%>
</body>
</html>