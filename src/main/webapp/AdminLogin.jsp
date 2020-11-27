<!--------------------------FormLayout IN BOOTSTRAP------------------------->
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<br>
		<br>
		<h1 class="text-success">Admin Login</h1>
		<br>
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
			<a href="index.jsp">Home</a><br>
		</div>
	</div>
</body>
</html>