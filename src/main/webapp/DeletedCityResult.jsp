<%@page isELIgnored="false"%>
<html>
<head>
<title>City Details</title>
</head>
<body>
	<h2>City Deleted Successfully :</h2>
	<hr>
	<h4>Code : ${cityObj.code}</h4>
	<h4>CityName : ${cityObj.cityName}</h4>
	<h4>TotalCase : ${cityObj.totalCase}</h4>
	<h4>TotalActiveCase : ${cityObj.totalActiveCase}</h4>
	<h4>Recovery : ${cityObj.recovery}</h4>
	<h4>Death : ${cityObj.death}</h4>
	<hr>
	<a href="getAllCases">Delete Another City</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>
