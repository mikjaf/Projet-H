<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
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
		
<title>Liste des ateliers</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<%-- <fmt:formatDate value="${ workshop.date }" pattern="dd MMMM yyyy" /> --%>
	
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