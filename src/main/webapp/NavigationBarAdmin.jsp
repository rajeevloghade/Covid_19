<html>
<head>
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


</body>
</html>