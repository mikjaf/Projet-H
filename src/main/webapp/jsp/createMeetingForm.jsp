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
<title>Créer une réunion</title>
</head>
<body>

	<h2>Créer une réunion</h2>
	
	<form action="event/createMeeting" method="post">
		<label for="topic">Sujet</label>
		<input type="text" placeholder="thème" id="topic" name="topic" required/><br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/><br/>
		<!-- <label for="location">Lieu</label> -->
		<label for="durationTime">Durée</label>
		<input type="text" placeholder="durée" id="durationTime" name="durationTime" required/><br/>
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/><br/>
		<input type="submit" value="Ajouter" />
		
	</form>
</body>
</html>