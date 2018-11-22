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
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<title>Ajouter un nouvel élément</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>

	<h1>Ajouter un nouvel élément</h1>
	
	
		<div>
			<p>Choisissez l'évènement de votre choix :</p>
		</div>
		<div>
			<a href="event/createWorkshop"><b>Atelier</b></a>
			<a href="event/createMeeting"><b>Réunion</b></a>
			<a href="event/createMatch"><b>Match</b></a>
		</div>
		
		<div>
			<p>Ajoutez un nouveau lieu :</p>
		</div>
		<div>
			<a href="location/createLocation"><b>Lieu</b></a>
		</div>

</body>
</html>