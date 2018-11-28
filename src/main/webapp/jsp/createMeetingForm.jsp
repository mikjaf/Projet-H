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
		
	<title>Ajouter une nouvelle réunion</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Créer une réunion</h1>
	
	<div id="meetingFormContainer">
		<form id="meetingForm" action="event/createMeeting" method="post">
			<div>
				<label for="topic">Sujet</label>
				<input type="text" class="form-control" placeholder="sujet" id="topic" name="topic" required/>
			</div>
			<div>
				<label for="eventType">Type : </label>
				<select name="eventType" id="eventType" class="form-control">
					<option value="Atelier">Atelier</option>
					<option value="Reunion">Réunion</option>
					<option value="Match">Match</option>		
				</select>
			</div>
			<div>
				<label for="date">Date</label>
				<input type="date" class="form-control" id="date" name="date"/>
			</div>
			<div>
				<label for="location">Lieu</label>
				<select name="location" id="location" class="form-control">
					<option value="">--Choisissez un lieu--</option>
					<core:forEach var="location" items="${ locationList }">
		   			<option value="${ location.id }">${ location.locationName }</option>
					</core:forEach>
				</select>
			</div>
			<div>
				<label for="durationTime">Durée</label>
				<input type="text" class="form-control" placeholder="durée" id="durationTime" name="durationTime" required/>
			</div>
			<div>
				<label for="description">Description</label>
				<textarea type="text" class="form-control" placeholder="description" id="description" name="description" rows="3" required></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Ajouter</button>
		</form>
	</div>
	
	<script type="text/javascript" src="js/script.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	
</body>
</html>