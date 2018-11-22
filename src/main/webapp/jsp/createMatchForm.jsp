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
		
<title>Ajouter un match</title>
<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Ajouter un match</h1>
	
	<form method="post" action="event/createMatch">
		<label for="topic">Titre</label>
		<input type="text" placeholder="titre" id="topic" name="title" required/>
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
		<label for="competition">Compétition</label>
		<select name="competition" id="competition">
			<option value="Championnat">Championnat</option>
			<option value="CoupeFrance">Coupe de France</option>
			<option value="CoupeLigue">Coupe de la Ligue</option>
			<option value="ChampionsLeague">Ligue des Champions</option>		
		</select>
		<br/>
		
		<!-- <label for="location">Lieu</label> -->
		
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/>
		<br/>
		<label for="homeAway">Match : </label>
             <label for="Domicile">Domicile</label>
             <input type="radio" name="homeAway" value="Domicile" id="Domicile" placeholder="Domicile">
             <label for="Extérieur">Extérieur</label>
             <input type="radio" name="homeAway" value="Extérieur" id="Extérieur" placeholder="Extérieur">
        <br/>                 
		
		
		<p>En cas de matchs à l'extérieur, l'association propose un déplacement</p>
		
		<label for="transportation">Transport</label>
		<input type="text" placeholder="transport" id="transportation" name="transportation" />
		<br/>
		<label for="departureTime">Heure de départ</label>
		<input type="text" id="departureTime" name="departureTime">
		<br/>
		<label for="arrivalTime">Heure de retour</label>
		<input type="text" id="arrivalTime" name="arrivalTime"/> 
		<br/> 
		<label for="participantMax">Nombre de places maximales</label>
		<input type="number" placeholder="Nombre de places" id="participantMax" name="participantMax"/>
		<br/>
		<input type="submit" value="Ajouter" />
	
	</form>
</body>
</html>