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

	<div class=button>
		<a href="event/createEvent">Ajouter un nouvel élément</a>
	</div>

	
	<table>
		<tr>
			<th>Titre</th>
			<th>Type de l'événement</th>
			<th>Date</th>
		</tr>
		<core:forEach var="event" items="${ eventsList }">
		<tr>
			<core:choose>
				<core:when test="${ event.eventType == 'Atelier' }">
					<td><a href="event/workshop/${ event.id }">${ event.title }</a></td>
				</core:when>
				<core:when test="${ event.eventType == 'Reunion' }">
					<td><a href="event/meeting/${ event.id }">${ event.title }</a></td>
				</core:when>
				<core:when test="${ event.eventType == 'Match' }">
					<td><a href="event/match/${ event.id }">${ event.title }</a></td>
				</core:when>
			</core:choose>
			
			<td>${ event.eventType }</td>
			<td><fmt:formatDate value="${ event.date }" pattern="EEEE dd MMMM" /></td>
		</tr>
		</core:forEach>
	</table>
	
</body>
</html>