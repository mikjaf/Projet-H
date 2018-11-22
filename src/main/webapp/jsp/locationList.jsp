<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<title>Liste des lieux</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>

	<h1>Liste des lieux</h1>
	
	<table>
		<tr>
			<th>Nom du lieu</th>
		</tr>
		<core:forEach var="location" items="${ locationList }">
		<tr>
			<td><a href="location/${ location.id }">${ location.locationName }</a></td>
			<td>${ location.city }</td>
		</tr>
	</core:forEach>
	
	</table>

</body>
</html>