<%@page import="java.util.*,com.covid.model.City" isELIgnored="false"%>

<html>
<head>
<title>District Information</title>
</head>
<body>
	<h2>District Information :</h2>
	<hr>
	<h4>Code : ${districtObj.code}</h4>
	<h4>DistrictName : ${districtObj.districtName}</h4>
	<h4>TotalCase : ${districtObj.totalCase}</h4>
	<h4>TotalActiveCase : ${districtObj.totalActiveCase}</h4>
	<h4>Recovery : ${districtObj.recovery}</h4>
	<h4>Death : ${districtObj.death}</h4>
	<hr>
	<a href="getAllCases">City Wise</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>

