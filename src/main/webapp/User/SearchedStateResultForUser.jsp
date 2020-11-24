<%@page import="java.util.*,com.covid.model.City" isELIgnored="false"%>

<html>
<head>
<title>State Information</title>
</head>
<body>
	<h2>State Information :</h2>
	<hr>
	<h4>Code : ${stateObj.code}</h4>
	<h4>State Name : ${stateObj.stateName}</h4>
	<h4>Total Case : ${stateObj.totalCase}</h4>
	<h4>Total Active Case : ${stateObj.totalActiveCase}</h4>
	<h4>Recovery : ${stateObj.recovery}</h4>
	<h4>Death : ${stateObj.death}</h4>
	<hr>
	<a href="paginationOfCity?startPage=0&itemPerPage=5">Back To Cities
		Case</a>
	<br>
	<a href="paginationOfDistrict?startPage=0&itemPerPage=5">Back To
		Districts Case</a>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>

