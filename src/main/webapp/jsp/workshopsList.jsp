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
		
<title>Liste des ateliers</title>
</head>

<body>
	<h1>Liste des ateliers</h1>
	
	<table>
		<tr>
			<th>Thème de l'atelier</th>
			<th>Date</th>
		</tr>
		<core:forEach var="workshop" items="${ workshopsList }">
		<tr>
			<td><a href="event/workshop/${ workshop.id }">${ workshop.theme }</a></td>
			<td>${ workshop.date }</td>
		</tr>
	</core:forEach>
	
	</table>
	
</body>
</html>