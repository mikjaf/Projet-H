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
<title>Réunion</title>
</head>
<body>

	<h1>${ eventType} : ${ meeting.topic }</h1>
	
	<div id="meetingPlace">
			${ event.location }
	</div>
	<div id="meetingDate">
			${ event.date }
	</div>
	<div id="meetingParticipantsNb">
			<input type="submit" value="Je participe" />
	</div>
	<div id="meetingDescription">
			${ event.description }
	</div>
</body>
</html>

