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
		
<title>Atelier</title>
</head>
<body>

	<h1>Atelier : ${ workshop.theme }</h1>
	
	<div id="workshopPlace">
			${ workshop.location }
	</div>
	<div id="workshopDate">
			${ workshop.date }
	</div>
	<div id="workshopParticipantsNb">
			<input type="submit" value="Je participe" />
			
	</div>
	<div id="workshopDescription">
			${ workshop.description }
	</div>
</body>
</html>