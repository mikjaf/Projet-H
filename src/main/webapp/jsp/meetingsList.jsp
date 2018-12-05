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
<title>Liste des rénuions</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<%-- <fmt:formatDate value="${ meeting.date }" pattern="dd MMMM yyyy" /> --%>
	
	<h1>Liste des réunions</h1>
	
	<table class=eventsLists>
		<tr>
			<th>Sujet de la réunion</th>
			<th>Date</th>
		</tr>
		<core:forEach var="meeting" items="${ meetingsList }">
		<tr>
			<td><a href="event/meeting/${ meeting.id }">${ meeting.title }</a></td>
			<td><fmt:formatDate value="${ meeting.date }" pattern="dd MMMM yyyy" /><td>
		</core:forEach>
	</table>
		
</body>
</html>