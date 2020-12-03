<!------- Navigation Bar -------->
<%@include file="NavigationBarAdmin.jsp"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>City Wise Cases</title>
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
							href="cityUpdate?code=${city.code}"><i
								class="fas fa-pencil-alt"></i></a></td>
						<td class="text-center"><a
							href="cityDelete?code=${city.code}"><i
								class="fas fa-trash-alt"></i></a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<a href="insertCityPage" style="text-decoration: none;">Add More
			City / </a> <a href="adminDashBoard" style="text-decoration: none;">Admin
			Dashboard</a>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="User/Footer.jsp"%>
</body>
</html>