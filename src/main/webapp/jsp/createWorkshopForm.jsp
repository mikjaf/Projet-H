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
<title>Cr�er un atelier</title>
</head>
<body>

	<h2>Cr�er un atelier</h2>

	<form action="event/createWorkshop" method="post">
		<label for="topic">Th�me</label>
		<input type="text" placeholder="th�me" id="topic" name="theme" required/><br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/><br/>
		<!-- <label for="location">Lieu</label> -->
		<label for="equipment">Mat�riel</label>
		<input type="text" placeholder="mat�riel" id="equipment" name="equipment" required/><br/>
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/><br/>
		<input type="submit" value="Ajouter" />
	
	</form>
</body>
</html>