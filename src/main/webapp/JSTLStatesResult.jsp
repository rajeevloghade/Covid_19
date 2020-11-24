<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<title>State Wise Cases</title>
</head>
<body>
	<h3>Cases All Over The State</h3>
	<hr>
	<table border="2">
		<tr>
			<th>Code</th>
			<th>StateName</th>
			<th>TotalCases</th>
			<th>TotalActiveCases</th>
			<th>Recovery</th>
			<th>Deaths</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Districts</th>
			<th>Cities</th>
		</tr>
		<jstl:forEach items="${states}" var="state">
			<tr>
				<td>${state.code}</td>
				<td>${state.stateName}</td>
				<td>${state.totalCase}</td>
				<td>${state.totalActiveCase}</td>
				<td>${state.recovery}</td>
				<td>${state.death}</td>
				<td><a href="stateUpdate?code=${state.code}">Update</a></td>
				<td><a href="stateDelete?code=${state.code}">Delete</a></td>
				<td><a href="getAllDistrictByStateId?stateid_fk=${state.code}">Districts</a></td>
				<td><a href="getAllCityByStateId?stateid_fk=${state.code}">Cities</a></td>
			</tr>
		</jstl:forEach>
	</table>
	<hr>
	<a href="adminDashBoard">AdminDashBoard</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>