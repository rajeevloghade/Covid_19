<!------- Navigation Bar -------->
<%@include file="NavigationBarAdmin.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="error"%>

<html>
<head>
<title>New District Entry</title>
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
		<h1 class="text-success">Add New District</h1>
		<br>
		<form method="post" action="DistrictInsertion" class="bg-light">
			<div class="from-group">
				<lable for="code" class="font-weight-bold"> District Code :</lable>
				<input type="text" name="code" id="code" class="form-control"
					required> <i style="color: red;"><error:errors
						path="districtInserted.code" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="districtName" class="font-weight-bold"> District
				Name: </lable>
				<input type="text" name="districtName" id="districtName"
					class="form-control" required> <i style="color: red;"><error:errors
						path="districtInserted.districtName" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="stateFk" class="font-weight-bold"> State Code: </lable>
				<input type="text" name="stateFk" id="stateFk" class="form-control"
					required> <i style="color: red;"><error:errors
						path="districtInserted.stateFk" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="totalActiveCase" class="font-weight-bold"> Total
				Active Case: </lable>
				<input type="number" name="totalActiveCase" id="totalActiveCase"
					class="form-control" required> <i style="color: red;"><error:errors
						path="districtInserted.totalActiveCase" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="recovery" class="font-weight-bold"> Recover: </lable>
				<input type="number" name="recovery" id="recovery"
					class="form-control" required> <i style="color: red;"><error:errors
						path="districtInserted.recovery" /></i>
			</div>
			<br>
			<div class="from-group">
				<lable for="death" class="font-weight-bold"> Death: </lable>
				<input type="number" name="death" id="death" class="form-control"
					required> <i style="color: red;"><error:errors
						path="districtInserted.death" /></i>
			</div>
			<input type="submit" value="Add District" class="btn btn-primary">
		</form>
		<div>
			<a href="index.jsp">Home</a><br>
		</div>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="User/Footer.jsp"%>
</body>
</html>
