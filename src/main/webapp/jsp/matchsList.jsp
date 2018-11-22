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
<title>Liste des matchs</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Liste des matchs</h1>
	
	<table>
		<tr>
			<th>Nom du match</th>
			<th>Date</th>
		</tr>
		<core:forEach var="match" items="${ matchsList }">
		<tr>
			<td><a href="event/match/${ match.id }">${ match.title }</a></td>
			<td>${ match.date }</td>
		</tr>
		</core:forEach>
	</table>
	
</body>
</html>