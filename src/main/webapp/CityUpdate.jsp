<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Update City</title>
</head>
<body>
	<h1>Update City</h1>
	<h2>
		<hr>
		<form action="CityUpdation" method="post">
			<table>

				<tr>
					<td>City Code</td>
					<td><input type="text" name="code"
						placeholder="Enter City Code" value="${searchedCity.code}"
						readonly="readonly" required="required"></td>
				</tr>
				<tr>
					<td>City Name</td>
					<td><input type="text" name="cityName"
						placeholder="Enter City Name" value="${searchedCity.cityName}"
						readonly="readonly" required="required"></td>
				</tr>
				<tr>
					<td>District</td>
					<td><input type="text" name="district"
						placeholder="Enter District"
						value="${searchedCity.district.districtName}" readonly="readonly"
						required="required"></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" name="state" placeholder="Enter State"
						value="${searchedCity.state.stateName}" readonly="readonly"
						required="required"></td>
				</tr>
				<tr>
					<td>Total Active Case</td>
					<td><input type="text" name="totalActiveCase"
						placeholder="Enter Total Active Cases"
						value="${searchedCity.totalActiveCase }"></td>
				</tr>
				<tr>
					<td>Recover</td>
					<td><input type="text" name="recovery"
						placeholder="Enter Recoveries" value="${searchedCity.recovery }">
					</td>
				</tr>
				<tr>
					<td>Death</td>
					<td><input type="text" name="death" placeholder="Enter Deaths"
						value="${searchedCity.death }"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save"></td>
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="adminDashBoard">Admin Dashboard</a><br> <a
			href='index.jsp'>Home</a><br>
	</h2>
</body>
</html>


