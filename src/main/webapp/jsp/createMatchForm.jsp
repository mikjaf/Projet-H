<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<body>

	<h2>Ajouter un match</h2>
	
	<form method="post" action="event/createMatch">
		<label for="topic">Titre</label>
		<input type="text" placeholder="titre" id="topic" name="title" required/>
		<br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/>
		<br/>
		<label for="competitionType">Comp�tition</label>
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
		<label for="homeAway">Match</label>
             <input type="radio" name="homeAway" value="Domicile" id="Domicile" placeholder="Domicile">
             <label for="Domicile">Domicile</label>
             <input type="radio" name="homeAway" value="Ext�rieur" id="Ext�rieur" placeholder="Ext�rieur">
             <label for="Ext�rieur">Ext�rieur</label>
		<!-- <label for="participantNumber">Nombre de participants</label> -->
		
		<p>En cas de matchs � l'ext�rieur, l'association propose un d�placement</p>
		<label for="transportation">Transport</label>
		<input type="text" placeholder="transport" id="transportation" name="transportation" />
		<br/>
		<label for="departureTime">Heure de d�part</label>
		<input type="date" id="departureTime" name="departureTime"/>
		<br/>
		<label for="arrivalTime">Heure de retour</label>
		<input type="date" id="arrivalTime" name="arrivalTime"/>
		<br/>
		<label for="participantMax">Nombre de places maximales</label>
		<input type="number" placeholder="Nombre de places" id="participantMax" name="participantMax"/>
		<br/>
		<input type="submit" value="Ajouter" />
	
	</form>
</body>
</html>