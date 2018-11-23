<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dashboard</title>
	<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
<link rel="stylesheet" href="css/style.css" type="text/css"/>

</head>

<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Dashboard</h1>

	<div>
		<a href="event/createEvent">Ajouter un nouvel élément</a>
	</div>

	
	<table>
		<tr>
			<th>Type de l'événement</th>
			<th>Titre</th>
			<th>Date</th>
		</tr>
		<core:forEach var="event" items="${ eventsList }">
		<tr>
			<td>${ event.type }</td>
			<td><a href="event/${ event.id }">${ event.title }</a></td>
			<td>${ event.date }</td>
		</tr>
		</core:forEach>
	</table>
	
</body>
</html>