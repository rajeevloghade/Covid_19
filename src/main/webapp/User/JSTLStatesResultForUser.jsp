<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
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
							href="getAllDistrictByStateIdForUser?startPage=0&itemPerPage=5&stateid_fk=${state.code}" style="text-decoration: none;">Districts</a></td>
						<td class="text-center"><a
							href="getAllCityByStateIdForUser?startPage=0&itemPerPage=5&stateid_fk=${state.code}" style="text-decoration: none;">Cities</a></td>
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
				href="paginationOfState?startPage=<%=increase%>&itemPerPage=5"
				class="page-link"><%=i%></a></li>
		</ul>
		<%
			increase = increase + 6;
		}
		%>
		<a href="index.jsp" style="text-decoration: none;">Home</a>
	</div>
</body>
</html>