<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Update District</title>
</head>
<body>
	<h1>Update District</h1>
	<h2>
		<hr>
		<form action="DistrictUpdation" method="post">
			<table>
				<tr>
					<td>District Code</td>
					<td><input type="text" name="code"
						placeholder="Enter State Code" value="${searchedDistrict.code}"
						readonly="readonly" required="required"></td>
				</tr>
				<tr>
					<td>District</td>
					<td><input type="text" name="districtName"
						placeholder="Enter State" value="${searchedDistrict.districtName}"
						readonly="readonly" required="required"></td>
				</tr>
				<tr>
					<td>State Code</td>
					<td><input type="text" name="stateFk"
						placeholder="Enter State"
						value="${searchedDistrict.state.stateName}" readonly="readonly"
						required="required"></td>
				</tr>
				<tr>
					<td>Total Active Case</td>
					<td><input type="text" name="totalActiveCase"
						placeholder="Enter Total Active Cases"
						value="${searchedDistrict.totalActiveCase }"></td>
				</tr>
				<tr>
					<td>Recover</td>
					<td><input type="text" name="recovery"
						placeholder="Enter Recoveries"
						value="${searchedDistrict.recovery }"></td>
				</tr>
				<tr>
					<td>Death</td>
					<td><input type="text" name="death" placeholder="Enter Deaths"
						value="${searchedDistrict.death }"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="adminDashBoard">Admin Dashboard</a><br> <a
			href='index.jsp'>Home</a><br>
	</h2>
</body>
</html>


