<!------- Navigation Bar -------->
<%@include file="NavigationBarAdmin.jsp"%>
<%@page isELIgnored="false"%>
<html>
<head>
<title>Update District</title>
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
		<h1 class="text-success">Update District</h1>
		<br>
		<form method="post" action="DistrictUpdation" class="bg-light">
			<div class="from-group">
				<lable for="code" class="font-weight-bold"> District Code :</lable>
				<input type="text" name="code" id="code" class="form-control"
					value="${searchedDistrict.code }" readonly="readonly" required>
			</div>
			<br>
			<div class="from-group">
				<lable for="stateName" class="font-weight-bold"> District
				Name: </lable>
				<input type="text" name="districtName" id="districtName"
					class="form-control" value="${searchedDistrict.districtName}"
					readonly="readonly" required>
			</div>
			<br>
			<div class="from-group">
				<lable for="stateName" class="font-weight-bold"> State : </lable>
				<input type="text" name="stateFk" id="stateFk" class="form-control"
					value="${searchedDistrict.state.stateName }" readonly="readonly"
					required>
			</div>
			<br>
			<div class="from-group">
				<lable for="totalActiveCase" class="font-weight-bold"> Total
				Active Case: </lable>
				<input type="number" name="totalActiveCase" id="totalActiveCase"
					class="form-control" value="${searchedDistrict.totalActiveCase }"
					required>
			</div>
			<br>
			<div class="from-group">
				<lable for="recovery" class="font-weight-bold"> Recover: </lable>
				<input type="number" name="recovery" id="recovery"
					class="form-control" value="${searchedDistrict.recovery }" required>
			</div>
			<br>
			<div class="from-group">
				<lable for="death" class="font-weight-bold"> Death: </lable>
				<input type="number" name="death" id="death" class="form-control"
					value="${searchedDistrict.death }" required>
			</div>
			<input type="submit" value="Update" class="btn btn-primary">
		</form>
		<div>
			<a href="adminDashBoard" style="text-decoration: none;">Admin
				Dashboard</a><br> <a href="index.jsp"
				style="text-decoration: none;">Home</a>
		</div>
	</div>

	<!-------------------------------- FOOTER -------------------------------------->
	<%@include file="User/Footer.jsp"%>
</body>
</html>


