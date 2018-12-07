<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
		
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
		
	<title>${ match.title }</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<div class="container1">
	
		<div class="event1">
	
			<div class="divTitle1">
				<h1>${ match.eventType } : ${ match.title }</h1>
			</div>
			
			<div class="event2">
				
				<div id="matchLocationName">
					<p><b>Lieu : </b>
					<a href="location/${ match.location.id }">${ match.location.locationName }</a>
					</p>
				</div>
				
				<div id="matchDate">
					<p><b>Date : </b><fmt:formatDate value="${ match.date }" pattern="EEEE dd MMMM" /></p>
					
				</div>
				
				
				<div id="competitionType">
					<p><b>Compétition : </b>${ match.competitionType }</p>
				</div>
				
				<div id="homeAway">
					<p><b>Domicile / Extérieur : </b>${ match.homeAway }</p>
				</div>
				
				<div id="matchDescription">
					<p><b>Description : </b>${ match.description }</p>
				</div>
				
				<div id="matchParticipantsNb">
						<input type="submit" value="Je participe" />
						${ match.participantNumber }
				</div>
				
			</div>
				
		</div>
			
		
	
	
	
	<!-- si extérieur -->
	
		<div class="event1">
		
			<div class="divTitle1">
				<h2>Déplacement : ${ match.title }</h2>
			</div>
			
			<div class="event2">
				
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
				
				<div id="availableSeats">
						<%-- ${ match.transport.seatstaken }  --%>
				</div>
				
			</div>
			
		</div>
		
	</div>
	
	
	
	
	<script type="text/javascript" src="js/script.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		
	
</body>
</html>