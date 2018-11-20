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
<title>Créer un atelier</title>
</head>
<body>

	<h2>Créer un atelier</h2>

	<form action="event/createWorkshop" method="post">
		<label for="topic">Thème</label>
		<input type="text" placeholder="thème" id="topic" name="theme" required/><br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/><br/>
		<!-- <label for="location">Lieu</label> -->
		<label for="equipment">Matériel</label>
		<input type="text" placeholder="matériel" id="equipment" name="equipment" required/><br/>
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/><br/>
		<input type="submit" value="Ajouter" />
	
	</form>
</body>
</html>