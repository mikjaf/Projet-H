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

	<h1>Réunion : ${ meeting.topic }</h1>
	
	<div id="meetingPlace">
			${ meeting.location }
	</div>
	<div id="meetingDate">
			${ meeting.date }
	</div>
	<div id="durationTime">
			${ meeting.durationTime }
	</div>
	<div id="meetingParticipantsNb">
			<input type="submit" value="Je participe" />
	</div>
	<div id="meetingDescription">
			${ meeting.description }
	</div>
</body>
</html>

