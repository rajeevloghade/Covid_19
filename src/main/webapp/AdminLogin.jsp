<!------- Navigation Bar -------->
<%@include file="User/NavigationBar.jsp"%>
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
		<div>
			<a href="index.jsp"><i class="fas fa-home"></i></a>
		</div>
		<br>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="User/Footer.jsp"%>
</body>
</html>