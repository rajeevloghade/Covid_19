<!------- Navigation Bar -------->
<%@include file="NavigationBar.jsp"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>District Wise Cases</title>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
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

	<!----------------------------------- TOTAL CASES --------------------------------------------->
	<div class="container-fluid">
		<div class="row" id="clusters">

			<div class="col-12 col-lg-6 order-lg-2">
				<div class="row">
					<div class="col-12 mb-3">
						<div class="alert bg-danger text-light mb-0 mt-3 mt-lg-0">
							<strong> Last case recorded in India</strong>
						</div>
					</div>
					<div class="col-12 card-stats">
						<div class="card-deck">
							<div class="card bg-light mb-3 text-danger">
								<div class="card-header">Confirmed</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">${sumOfTotalCase}</h5>
									</div>
								</div>
							</div>
							<div class="card bg-light mb-3 text-primary">
								<div class="card-header">Active</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">${sumOfTotalActiveCase}</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="card-deck">
							<div class="card bg-light mb-3 text-success">
								<div class="card-header">Recovered</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">${sumOfRecovery}</h5>
									</div>
								</div>
							</div>
							<div class="card bg-light mb-3 text-dark">
								<div class="card-header">Deaths</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">${sumOfDeath}</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-12 col-lg-6 mb-3 order-lg-1">
				<div class="card" id="covid-content">
					<div class="card-header bg-primary text-light">
						<h1 class="card-title" style="font-size: x-large;">Corona
							Update : Total cases of India</h1>
					</div>
					<div class="card-body">
						<p>${sumOfTotalCase}peoplearesofaraffected in India by novel
							coronavirus covid-19. ${sumOfRecovery} out of ${sumOfTotalCase}
							have recovered. Sadly, ${sumOfDeath} patients have died due to
							coronavirus in India. 434821 patients are still in hospital and
							recovering. The last recorded case of coronavirus in India. Below
							is the list of sources from which data is aggregated into a
							crowdsourced patient database along with some note on travel
							history and suspected contraction from another patient if any.
							All data is verified by a group of volunteers at Covid19India.org
							after aggregating from various district and state level health
							bulletins and other reliable sources.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>

	<!------------------------------------ TABLE ------------------------------------>
	<div class="container">
		<div class="row" id="data">
			<div class="col-12 mb-3">
				<ul class="nav nav-pills nav-fill" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="state-data-tab" data-toggle="tab" href="#district-data"
						role="tab" aria-controls="state wise data" aria-selected="true">District-wise
							Data</a></li>
				</ul>
			</div>
		</div>
		<table
			class="table table-bordered table-hover table-striped table-reponsive-sm"
			id="#data">
			<thead>
				<tr class="bg-dark">
					<th class="text-center text-white">Code</th>
					<th class="text-center text-white">DistrictName</th>
					<th class="text-center text-white">State</th>
					<th class="text-center text-white">TotalCases</th>
					<th class="text-center text-white">TotalActiveCases</th>
					<th class="text-center text-white">Recovery</th>
					<th class="text-center text-white">Deaths</th>
					<th class="text-center text-white">Cities</th>
				</tr>
			</thead>
			<jstl:forEach items="${districts}" var="district">
				<tbody>
					<tr>
						<td class="text-center">${district.code}</td>
						<td class="text-center">${district.districtName}</td>
						<td class="text-center"><a
							href="searchStateForUser?code=${district.state.code}"
							style="text-decoration: none;">${district.state.stateName}</a></td>
						<td class="text-center">${district.totalCase}</td>
						<td class="text-center">${district.totalActiveCase}</td>
						<td class="text-center">${district.recovery}</td>
						<td class="text-center">${district.death}</td>
						<td class="text-center"><a
							href="getAllCityByDistrictIdForUser?startPage=0&itemPerPage=5&districtid_fk=${district.code}"
							style="text-decoration: none;">Cities</a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
		<div class="container">
			<%
				int pageNumber = (Integer) request.getAttribute("pageNumber");
			int increase = 0;
			for (int i = 1; i <= pageNumber; i++) {
			%>
			<ul class="pagination">
				<li class="page-item active"><a
					href="paginationOfDistrict?startPage=<%=increase%>&itemPerPage=5"
					class="page-link"><%=i%></a></li>
			</ul>
			<%
				increase = increase + 6;
			}
			%>
		</div>
		<a href="paginationOfState?startPage=0&itemPerPage=5"
			style="text-decoration: none;">State Wise / </a> <a href="index.jsp"
			style="text-decoration: none;"><i class="fas fa-home"></i></a>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="Footer.jsp"%>
</body>
</html>