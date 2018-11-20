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
		
<title>Liste des rénuions</title>
</head>

<body>
	<h1>Liste des réunions</h1>
	
	<table>
		<tr>
			<th>Sujet de la réunion</th>
			<th>Date</th>
		</tr>
		<core:forEach var="meeting" items="${ meetingsList }">
		<tr>
			<td><a href="event/meeting/${ meeting.id }">${ meeting.topic }</a></td>
			<td>${ meeting.date }<td>
		</core:forEach>
	</table>
		
</body>
</html>