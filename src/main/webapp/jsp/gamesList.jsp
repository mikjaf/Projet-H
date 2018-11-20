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
<title>Liste des matchs</title>
</head>

<body>
	<h1>Liste des matchs</h1>
	
	<table>
		<tr>
			<th>Nom du match</th>
			<th>Date</th>
		</tr>
		<core:forEach var="match" items="gamesList"></core:forEach>
		<tr>
			<td>${ match.title }</td>
			<td>${ match.date }</td>
		</tr>
	</table>
	
</body>
</html>