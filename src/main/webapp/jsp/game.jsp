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

	<h1>${ eventType} : ${ game.title }</h1>
	
	<div id="gameLocationName">
			${ event.location }
	</div>
	<div id="gameDate">
			${ event.date }
	</div>
	<div id="gameParticipantsNb">
			<input type="submit" value="Je participe" />
			
	</div>
	<div id="homeAway">
			 <label for="homeAway">Match</label>
             <input type="radio" name="homeAway" value="Domicile" id="Domicile" placeholder="Domicile">
             <label for="Domicile">Domicile</label>
             <input type="radio" name="homeAway" value="Extérieur" id="Extérieur" placeholder="Extérieur">
             <label for="Extérieur">Extérieur</label>
	</div>
	<div id="gameDescription">
			${ event.description }
	</div>
	
	
	
	<!-- si extérieur -->
	
	<h2>Déplacement : ${ game.title }</h2>
	
	<div id="transportation">
			${ event.transportation }
	</div>
	<div id="departureTime">
			${ event.departureTime }
	</div>
	<div id="arrivalTime"> 
			${ event.arrivalTime }
	</div>
	<div id=maxNb>
	
	</div>
	<div id="availableSeats">
		
	</div>
	
	
</body>
</html>