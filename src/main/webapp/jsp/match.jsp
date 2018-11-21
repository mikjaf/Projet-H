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
		
<title>Match</title>
</head>
<body>

	<h1>Match : ${ match.title }</h1>
	
	<div id="matchLocationName">
			${ match.location }
	</div>
	<div id="matchDate">
			${ match.date }
	</div>
	<div id="matchParticipantsNb">
			<input type="submit" value="Je participe" />
			${ match.participantNumber }
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
			${ match.transportation }
	</div>
	<div id="departureTime">
			${ match.departureTime }
	</div>
	<div id="arrivalTime"> 
			${ match.arrivalTime }
	</div>
	<div id=maxNb>
			${ match.participantMax }
	</div>
	<div id="availableSeats">
			<%-- ${ match.seatstaken }  --%>
	</div>
	
	
</body>
</html>