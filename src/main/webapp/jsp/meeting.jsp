<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
    
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
		<p><b>Lieu : </b>
			<a href="location/${ meeting.location.id }">${ meeting.location.locationName }</a> 
		</p>
	</div>
	<div id="meetingDate">
		<p><b>Date : </b>${ meeting.date }</p>
	</div>
	<div id="durationTime">
		<p><b>Durée : </b>${ meeting.durationTime }</p>
	</div>
	<div id="meetingParticipantsNb">
		<p><b>Nombre de participants : </b>${ meeting.participantNumber }
		<input type="submit" value="Je participe" /></p>
	</div>
	<div id="meetingDescription">
		<p><b>Description : </b>${ meeting.description }</p>
	</div>
</body>
</html>

