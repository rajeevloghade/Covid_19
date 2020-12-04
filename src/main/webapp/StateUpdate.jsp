<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Update State</title>
</head>
<body>
	<h1>Update State</h1>
	<h2>
		<hr>
		<form action="StateUpdation" method="post">
			<table>

				<tr>
					<td>State Code</td>
					<td><input type="text" name="code"
						placeholder="Enter State Code" value="${searchedState.code}"
						readonly="readonly" required="required"></td>
				</tr>
				<tr>
					<td>State</td>
					<td><input type="text" name="stateName"
						placeholder="Enter State" value="${searchedState.stateName}"></td>
				</tr>
				<tr>
					<td>Total Active Case</td>
					<td><input type="text" name="totalActiveCase"
						placeholder="Enter Total Active Cases"
						value="${searchedState.totalActiveCase }"></td>
				</tr>
				<tr>
					<td>Recover</td>
					<td><input type="text" name="recovery"
						placeholder="Enter Recoveries" value="${searchedState.recovery }">
					</td>
				</tr>
				<tr>
					<td>Death</td>
					<td><input type="text" name="death" placeholder="Enter Deaths"
						value="${searchedState.death }"></td>
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


