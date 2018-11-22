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
<title>Liens vers les listes</title>
</head>
<body>

	<h2>Liens vers les différentes listes</h2>
	
	<div>
	<a href="event/workshopsList">Liste des ateliers</a>
	</div>
	<div>
	<a href="event/meetingsList">Liste des réunions</a>
	</div>
	<div>
	<a href="event/matchsList">Liste des matchs</a>
	</div>
	<div>
	<a href="location/locationList">Liste des lieux</a>
	</div>
	
	<h2>Liens vers les différents formulaires</h2>
	
	<div>
	<a href="event/createWorkshop">Créer un atelier</a>
	</div>
	<div>
	<a href="event/createMeeting">Créer une réunion</a>
	</div>
	<div>
	<a href="event/createMatch">Créer un match</a>
	</div>
	<div>
	<a href="location/createLocation">Créer un lieu</a>
	</div>
	
	<h2>Liens vers les différents formulaires</h2>
	
	<div>
	<a href="event/createEvent">Créer un event</a>
	</div>
	

</body>
</html>