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
		
	<title>Ajouter un nouveau match</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<div class="container1">
	
		<h1>Ajouter un match</h1>
		
		<div id="matchFormContainer">
		
			<form id="matchForm" method="post" action="event/createMatch">
			
				<div id="matchFormDiv">
				
					<div id="matchFormDiv1">
					
						<div class="form-group">
							<label for="title">Titre</label>
							<input type="text" class="form-control" placeholder="titre" id="title" name="title" required/>
						</div>
						
						<div class="form-group">
							<label for="date">Date</label>
							<input type="date" class="form-control" id="date" name="date"/>
						</div>
						
						<div class="form-group">
							<label for="location">Lieu</label>
							<select name="location" class="form-control">
								<option value="">--Choisissez un lieu--</option>
								<core:forEach var="location" items="${ locationList }">
					   			<option value="${ location.id }">${ location.locationName }</option>
								</core:forEach>
							</select>
						</div>
						
						<div class="form-group">
							<label for="competition">Compétition</label>
							<select name="competition" id="competition" class="form-control">
								<option value="">--Choisissez une compétition--</option>
								<option value="Championnat">Championnat</option>
								<option value="CoupeFrance">Coupe de France</option>
								<option value="CoupeLigue">Coupe de la Ligue</option>
								<option value="ChampionsLeague">Ligue des Champions</option>		
							</select>
						</div>
						
						<div class="form-group">
							<label for="description">Description</label>
							<textarea type="text" class="form-control" placeholder="description" id="description" name="description" rows="3" required></textarea>
						</div>
						
						<input type="hidden" name ="eventType" value="Match">
						
			        </div>
		
		
					<div id="matchFormDiv2">
					
						<div>
							<label>Domicile / Extérieur</label>				
						</div>
						
						<div class="form-check form-check-inline">
				            <label for="Domicile" class="form-check-label">Domicile</label>
				            <input type="radio" class="form-check-input" name="homeAway" value="Domicile" id="Domicile" placeholder="Domicile">
						</div>
						
						<div class="form-check form-check-inline">
				            <label for="Extérieur" class="form-check-label">Extérieur</label>
				            <input type="radio" class="form-check-input" name="homeAway" value="Extérieur" id="Extérieur" placeholder="Extérieur">
				        </div>
				        
				        <div id="condition">
							<p>En cas de match à l'extérieur, l'association propose un déplacement :</p>
						</div>
						
						<div class="form-group">
							<label for="transportation">Transport</label>
							<input type="text" class="form-control" placeholder="transport" id="transportation" name="transportation" />
						</div>
						
						<div class="form-group">
							<label for="departureTime">Heure de départ</label>
							<input type="time" class="form-control" id="departureTime" name="departureTime">
						</div>
						
						<div class="form-group">
							<label for="arrivalTime">Heure de retour</label>
							<input type="time" class="form-control" id="arrivalTime" name="arrivalTime"/> 
						</div>
						
						<div class="form-group">
							<label for="participantMax">Nombre de places maximales</label>
							<input type="number" class="form-control" placeholder="Nombre de places" id="participantMax" name="participantMax"/>
						</div>
						
					</div>
					
				</div>
				
					<div id="matchFormDiv3">
					
						<div>
							<button type="submit" class="btn btn-primary">Ajouter</button>
						</div>
						
					</div>
				
			</form>
			
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