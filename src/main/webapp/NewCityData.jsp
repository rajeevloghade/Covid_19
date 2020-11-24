<%@taglib uri="http://www.springframework.org/tags/form" prefix="error"%>
<!DOCTYPE html>
<html>
<head>
<title>New City Entry</title>
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
		<br> <br>
		<h1 class="text-success">Add New City</h1>
		<br> <br>
		<form method="post" action="CityInsertion" class="bg-light">
			<div class="from-group">
				<lable for="code" class="font-weight-bold"> City Code :</lable>
				<input type="text" name="code" id="code" class="form-control"
					required> <i style="color: red;"><error:errors
						path="cityInserted.code" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="cityName" class="font-weight-bold"> City Name: </lable>
				<input type="text" name="cityName" id="cityName"
					class="form-control" required> <i style="color: red;"><error:errors
						path="cityInserted.cityName" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="districtFk" class="font-weight-bold"> District
				Code :</lable>
				<input type="text" name="districtFk" id="districtFk"
					class="form-control" required> <i style="color: red;"><error:errors
						path="cityInserted.districtFk" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="stateFk" class="font-weight-bold"> State Code :</lable>
				<input type="text" name="stateFk" id="stateFk" class="form-control"
					required> <i style="color: red;"><error:errors
						path="cityInserted.stateFk" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="totalActiveCase" class="font-weight-bold"> Total
				Active Case: </lable>
				<input type="number" name="totalActiveCase" id="totalActiveCase"
					class="form-control" required> <i style="color: red;"><error:errors
						path="cityInserted.totalActiveCase" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="recovery" class="font-weight-bold"> Recover: </lable>
				<input type="number" name="recovery" id="recovery"
					class="form-control" required> <i style="color: red;"><error:errors
						path="cityInserted.recovery" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="death" class="font-weight-bold"> Death: </lable>
				<input type="number" name="death" id="death" class="form-control"
					required> <i style="color: red;"><error:errors
						path="cityInserted.death" /></i>
			</div>
			<input type="submit" value="Add City" class="btn btn-primary">
		</form>
		<br>
		<div>
			<a href="index.jsp">Home</a><br>
		</div>
		<br> <br>
	</div>
</body>
</html>
