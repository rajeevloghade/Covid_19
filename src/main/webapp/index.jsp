<!------- Navigation Bar -------->
<%@include file="User/NavigationBar.jsp"%>
<%@page import="org.hibernate.internal.build.*"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<%@include file="User/Footer.jsp"%>
</body>
</html>

