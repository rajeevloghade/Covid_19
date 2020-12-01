<!--------------------------FormLayout IN BOOTSTRAP------------------------->
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
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
			</a>

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
		</div>
	</nav>


	<div class="container">
		<h1 class="text-success">Admin Login</h1>
		<br>
		<form method="post" action="VerifyAdmin" class="bg-light">
			<div class="from-group">
				<lable for="user" class="font-weight-bold"> Name: </lable>
				<input type="text" name="name" id="user" class="form-control"
					required>
			</div>
			<br>
			<div class="from-group">
				<lable for="email" class="font-weight-bold"> Email: </lable>
				<input type="email" name="email" id="email" class="form-control"
					required>
			</div>
			<br>
			<div class="from-group">
				<lable for="password" class="font-weight-bold"> Password: </lable>
				<input type="password" name="password" id="password"
					class="form-control" required>
			</div>
			<br> <input type="submit" class="btn btn-primary">
		</form>
		<br>
		<div>
			<a href="index.jsp"><i class="fas fa-home"></i></a><br>
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