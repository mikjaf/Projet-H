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
<title>Créer un atelier</title>
<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Créer un atelier</h1>

	<form action="event/createWorkshop" method="post">
		<label for="title">Thème</label>
		<input type="text" placeholder="thème" id="title" name="title" required/>
		<br/>
		<label for="eventType">Type : </label>
		<select name="eventType" id="eventType">
			<option value="Atelier">Atelier</option>
			<option value="Reunion">Réunion</option>
			<option value="Match">Match</option>		
		</select>
		<br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/>
		<br/>
		<label for="location">Lieu</label>
		<select name="location">
			<option value="">--Choisissez un lieu--</option>
			<core:forEach var="location" items="${ locationList }">
   			<option value="${ location.id }">${ location.locationName }</option>
			</core:forEach>
		</select>
		<br/>
		<label for="equipment">Matériel</label>
		<input type="text" placeholder="matériel" id="equipment" name="equipment" required/>
		<br/>
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/>
		<br/>
		<!-- <label for="participantNumber">Nombre de participants</label> -->
		<input type="submit" value="Ajouter" />
	</form>
	
	
</body>
</html>