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
<title>Match</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>${ match.eventType } : ${ match.title }</h1>
	
	<div id="matchLocationName">
		<a href="location/${ match.location.id }">${ match.location.locationName }</a>
	</div>
	<div id="matchDate">
			${ match.date }
	</div>
	<div id="matchParticipantsNb">
			<input type="submit" value="Je participe" />
			${ match.participantNumber }
	</div>
	<div id="competitionType">
			${ match.competitionType } 
	</div>
	<div id="homeAway">
			${ match.homeAway } 
	</div>
	<div id="matchDescription">
			${ match.description }
	</div>
	
	
	
	<!-- si extérieur -->
	
	<h2>Déplacement : ${ match.title }</h2>
	
	<div id="transportation">
			${ match.transport.transportation }
	</div>
	<div id="departureTime">
			${ match.transport.departureTime }
	</div>
	<div id="arrivalTime"> 
			${ match.transport.arrivalTime }
	</div>
	<div id=maxNb>
			${ match.transport.participantMax }
	</div>
	<div id="matchParticipantsNb">
		<p><b>Nombre de participants : </b>${ participantNumber }
		
		<%-- <core:if test="${ participateAlready == false }">
			<form method="post" action="event/match/participate">
				<input type="hidden" name="matchId" value="${ match.id }"> --%>
				<input type="submit" value="Je participe" />
			<%-- </form>
		</core:if> --%>
		
		</p>
	</div>
	
	
</body>
</html>