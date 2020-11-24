<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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
				<td><a
					href="paginationOfDistrict?startPage=0&itemPerPage=5&stateid_fk=${state.code}">Districts</a></td>
				<td><a
					href="paginationOfCity?startPage=0&itemPerPage=5&stateid_fk=${state.code}">Cities</a></td>
			</tr>
		</jstl:forEach>
	</table>
	<br>
	<%
		int pageNumber = (Integer) request.getAttribute("pageNumber");
	int increase = 0;
	for (int i = 1; i <= pageNumber; i++) {
	%>
	<a href="paginationOfState?startPage=<%=increase%>&itemPerPage=5"><%=i%></a>
	<%
		System.out.println("increase:" + increase);
	increase = increase + 6;
	}
	%>
	<hr>
	<br>
	<a href="index.jsp">Home</a>
</body>
</html>