<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>www.covidIndia.in</title>
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

			<a href="adminLoginPage" class="nav-item nav-link"> <i
				class="fas fa-user-cog"></i> Admin
			</a> <a href="#clusters" class="nav-item nav-link  active ">Clusters</a>
			<a href="#data" class="nav-item nav-link ">Data</a>

			<!-- DropDown Wise-List -->
			<div class="nav-item dropdown locale-selector">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"> <i
					class="fas fa-city"></i>
				</a>
				<div class="dropdown-menu">
					<a href="paginationOfState?startPage=0&itemPerPage=5"
						style="text-decoration: none;" class="dropdown-item">State
						Wise</a> <a href="paginationOfDistrict?startPage=0&itemPerPage=5"
						style="text-decoration: none;" class="dropdown-item">District
						Wise</a> <a href="paginationOfCity?startPage=0&itemPerPage=5"
						style="text-decoration: none;" class="dropdown-item">City Wise</a>
				</div>
			</div>

			<a href="http://localhost:8787/COVID_19/precaution"
				class="nav-item nav-link ">Precaution</a> <a
				class="nav-item nav-link " href="#help_links"> Helpful Links </a>
			<!-- <div class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"> <i
					class="fas fa-1x fa-question-circle-o"></i>
				</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#help_links"> Helpful Links </a>
				</div>
			</div> -->
		</div>
	</nav>


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
										<h5 class="card-title">9463254</h5>
									</div>
								</div>
							</div>
							<div class="card bg-light mb-3 text-primary">
								<div class="card-header">Active</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">434821</h5>
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
										<h5 class="card-title">8888595</h5>
									</div>
								</div>
							</div>
							<div class="card bg-light mb-3 text-dark">
								<div class="card-header">Deaths</div>
								<div class="card-body">
									<div
										class="d-flex flex-lg-column justify-content-between align-items-lg-center">
										<h5 class="card-title">137659</h5>
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
						<p>9463254 people are so far affected in India by novel
							coronavirus covid-19. 8888595 out of 9463254 have recovered.
							Sadly, 137659 patients have died due to coronavirus in India.
							434821 patients are still in hospital and recovering. The last
							recorded case of coronavirus in India was 53 minutes ago. Below
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


	<!-------------------------------- FOOTER -------------------------------------->
	<footer class="container-fluid footer bg-dark " id="help_links">
		<br>
		<div class="row m-auto">
			<div class="col-sm-6">
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

