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
<title>Cr�er une r�union</title>
</head>
<body>

	<h2>Cr�er une r�union</h2>
	
	<form action="event/createMeeting" method="post">
		<label for="topic">Sujet</label>
		<input type="text" placeholder="th�me" id="topic" name="topic" required/><br/>
		<label for="date">Date</label>
		<input type="date" id="date" name="date"/><br/>
		<!-- <label for="location">Lieu</label> -->
		<label for="durationTime">Dur�e</label>
		<input type="text" placeholder="dur�e" id="durationTime" name="durationTime" required/><br/>
		<label for="description">Description</label>
		<input type="text" placeholder="description" id="description" name="description" required/><br/>
		<input type="submit" value="Ajouter" />
		
	</form>
</body>
</html>