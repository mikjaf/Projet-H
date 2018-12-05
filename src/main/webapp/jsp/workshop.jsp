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

<title>Atelier</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>${ workshop.eventType } : ${ workshop.title }</h1>
	
	<div id="workshopPlace">
		<a href="location/${ workshop.location.id }">${ workshop.location.locationName }</a>
	</div>
	<div id="workshopDate">
			${ workshop.date }
	</div>
	<div id="workshopEquipment">
			${ workshop.equipment }
	</div>
	<div id="workshopParticipantsNb">
			<input type="submit" value="Je participe" />
			<%-- ${ workshop.participantNumber } --%>
	</div>
	<div id="workshopDescription">
			${ workshop.description }
	</div>
</body>
</html>