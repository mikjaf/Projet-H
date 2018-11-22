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

	<h2>Liens vers les diff�rentes listes</h2>
	
	<div>
	<a href="event/workshopsList">Liste des ateliers</a>
	</div>
	<div>
	<a href="event/meetingsList">Liste des r�unions</a>
	</div>
	<div>
	<a href="event/matchsList">Liste des matchs</a>
	</div>
	<div>
	<a href="location/locationList">Liste des lieux</a>
	</div>
	
	<h2>Liens vers les diff�rents formulaires</h2>
	
	<div>
	<a href="event/createWorkshop">Cr�er un atelier</a>
	</div>
	<div>
	<a href="event/createMeeting">Cr�er une r�union</a>
	</div>
	<div>
	<a href="event/createMatch">Cr�er un match</a>
	</div>
	<div>
	<a href="location/createLocation">Cr�er un lieu</a>
	</div>
	
	<h2>Liens vers les diff�rents formulaires</h2>
	
	<div>
	<a href="event/createEvent">Cr�er un event</a>
	</div>
	

</body>
</html>