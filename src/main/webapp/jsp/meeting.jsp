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
<title>Réunion</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>
	
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
			<%-- ${ meeting.participantNumber } --%>
	</div>
	<div id="meetingDescription">
			${ meeting.description }
	</div>
</body>
</html>

