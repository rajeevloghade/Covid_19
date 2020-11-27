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
	<div class="container">
		<h1 class="text-center text-warning" style="padding: 10px">Cases
			All Over The Cities</h1>
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
				</tr>
			</thead>
			<jstl:forEach items="${cities}" var="city">
				<tbody>
					<tr>
						<td class="text-center">${city.code}</td>
						<td class="text-center">${city.cityName}</td>
						<td class="text-center"><a
							href="searchDistrictForUser?code=${city.district.code}"
							style="text-decoration: none;">${city.district.districtName}</a></td>
						<td class="text-center"><a
							href="searchStateForUser?code=${city.state.code}"
							style="text-decoration: none;">${city.state.stateName}</a></td>
						<td class="text-center">${city.totalCase}</td>
						<td class="text-center">${city.totalActiveCase}</td>
						<td class="text-center">${city.recovery}</td>
						<td class="text-center">${city.death}</td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
	</div>
	<div class="container">
		<%
			int pageNumber = (Integer) request.getAttribute("pageNumber");
		int increase = 0;
		for (int i = 1; i <= pageNumber; i++) {
		%>
		<ul class="pagination">
			<li class="page-item active"><a
				href="paginationOfCity?startPage=<%=increase%>&itemPerPage=5"
				class="page-link"><%=i%></a></li>
		</ul>
		<%
			increase = increase + 6;
		}
		%>
		<a href="paginationOfDistrict?startPage=0&itemPerPage=5"
			style="text-decoration: none;">District Wise</a> <br> <a
			href="paginationOfState?startPage=0&itemPerPage=5"
			style="text-decoration: none;">State Wise</a> <br> <a
			href="index.jsp" style="text-decoration: none;">Home</a>
	</div>
</body>
</html>