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
<title>Liste des matchs</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	<%-- <fmt:formatDate value="${ match.date }" pattern="dd MMMM yyyy" /> --%>
	
	<h1>Liste des matchs</h1>
	
	<table class="table table-striped">
	<thead>
		<tr>
			<th scope="col">Nom du match</th>
			<th scope="col">Date</th>
		</tr>
		</thead>
		<core:forEach var="match" items="${ matchsList }">
		<tbody>
		<tr>
			<td><a href="event/match/${ match.id }">${ match.title }</a></td>
			<td><fmt:formatDate value="${ match.date }" pattern="dd MMMM yyyy" /></td>
		</tr>
		</tbody>
		</core:forEach>
	</table>
	
</body>
</html>