<%@page import="java.util.*,com.covid.model.City" isELIgnored="false"%>

<html>
<head>
<title>State Information</title>
</head>
<body>
	<h2>State Information :</h2>
	<hr>
	<h4>Code : ${stateObj.code}</h4>
	<h4>StateName : ${stateObj.stateName}</h4>
	<h4>TotalCase : ${stateObj.totalCase}</h4>
	<h4>TotalActiveCase : ${stateObj.totalActiveCase}</h4>
	<h4>Recovery : ${stateObj.recovery}</h4>
	<h4>Death : ${stateObj.death}</h4>
	<hr>
	<a href="getAllDistrictCases">District Wise</a>
	<br>
	<a href="getAllCases">City Wise</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>

