<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>Admin Dashboard</title>
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

	<!--------------------------------- NAVBAR ------------------------------------->
	<nav
		class="navbar navbar-light navbar-expand-lg bg-light mb-4 justify-content-between"
		id="covid-nav">
		<a href="http://localhost:8787/COVID_19/index.jsp"
			class="navbar-brand"><h3 class="header-title">
				<span class="text-primary">COVID_19</span> <span
					class="text-secondary">India</span>
			</h3></a>

		<div class="nav nav-pills header-links">

			<!-- DropDown Wise-List -->
			<div class="nav-item dropdown locale-selector">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Operation
				</a>
				<div class="dropdown-menu">
					<a href="insertStatePage" style="text-decoration: none;"
						class="dropdown-item">State <i class="fas fa-plus-circle"></i></a>
					<a href="insertDistrictPage" style="text-decoration: none;"
						class="dropdown-item">District <i class="fas fa-plus-circle"></i></a>
					<a href="insertCityPage" style="text-decoration: none;"
						class="dropdown-item">City <i class="fas fa-plus-circle"></i></a>
				</div>
			</div>

			<!-- DropDown Wise-List -->
			<div class="nav-item dropdown locale-selector">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"> <i
					class="fas fa-city"></i>
				</a>
				<div class="dropdown-menu">
					<a href="getAllStateCases" style="text-decoration: none;"
						class="dropdown-item">State Wise</a> <a href="getAllDistrictCases"
						style="text-decoration: none;" class="dropdown-item">District
						Wise</a> <a href="getAllCases" style="text-decoration: none;"
						class="dropdown-item">City Wise</a>
				</div>
			</div>

			<a href="http://localhost:8787/COVID_19/precaution"
				class="nav-item nav-link ">Precaution</a> <a
				class="nav-item nav-link " href="logout"> Logout <i
				class="fas fa-sign-out "></i></a>
		</div>
	</nav>


	<!--------------------------------- TABLE ---------------------------------------->
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
							href="stateUpdate?code=${state.code}"><i
								class="fas fa-pencil-alt"></i></a></td>
						<td class="text-center"><a
							href="stateDelete?code=${state.code}"><i
								class="fas fa-trash-alt"></i></a></td>
						<td class="text-center text-decoration-none"><a
							href="getAllDistrictByStateId?itemPerPage=1000&stateid_fk=${state.code}">Districts</a></td>
						<td class="text-center text-decoration-none"><a
							href="getAllCityByStateId?itemPerPage=1000&stateid_fk=${state.code}">Cities</a></td>
					</tr>
				</tbody>
			</jstl:forEach>
		</table>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<footer class="container-fluid footer bg-dark " id="help_links">
		<br>
		<div class="row  m-auto">
			<div class="col-sm-6 ">
				<h3 class=" text-white font-weight-bolder">Helpful Links</h3>
				<a href="https://www.mohfw.gov.in/" class="# "> Ministry of
					Health and Family Welfare, Gov. of India </a><br> <a
					href="https://www.mohfw.gov.in/coronvavirushelplinenumber.pdf"
					class="# "> MOHFW - HELPLINE NUMBERS [by State] </a><br> <a
					href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019"
					class="# "> WHO: COVID-19 Home Page </a> <br> <a
					href="https://www.cdc.gov/coronavirus/2019-ncov/faq.html"
					class="# "> Centers for Disease Control and Prevention (CDC) </a> <br>
				<a href="https://coronavirus.thebaselab.com/" class="# ">
					COVID-19 Global Tracker </a>
			</div>

			<div class="col-sm-6">
				<h3 class="text-white font-weight-bolder">Sources</h3>
				<a href="https://github.com/rajeevloghade/Covid_19" class="# "><i
					class="fab fa-1x fa-github"></i> Contribute to Source Code </a><br>
				<a href="https://github.com/rajeevloghade/Covid_19/issues"
					class="# "><i class="fas fa-1x fa-bug"></i> Report a bug </a>
			</div>
		</div>

		<div class="column">
			<div class="col text-center text-light">
				<div class="p-3">
					An effort by <a href="https://www.linkedin.com/in/rajeevloghade/ "
						style="text-decoration: none;">Rajeev Loghade</a> to keep our
					loved ones safe and informed!
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
