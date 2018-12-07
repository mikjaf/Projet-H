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
		
	<title>Ajouter un nouvel élément</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="container1">
		
		<div id="eventDiv1">
		
			<div class="divTitle1">
				<h1>Ajouter un nouvel élément</h1>
			</div>
			
			<div>
				<p>Choisissez l'élément de votre choix :</p>
			</div>
			
			<div id="eventButton">
				<div class="button1">
					<a href="event/createWorkshop" class="btn btn-outline-primary"><b>Atelier</b></a>
				</div>
				<div class="button1">
					<a href="event/createMeeting" class="btn btn-outline-success"><b>Réunion</b></a>
				</div>
				<div class="button1">
					<a href="event/createMatch" class="btn btn-outline-danger"><b>Match</b></a>
				</div>
				<div class="button1">
					<a href="location/createLocation" class="btn btn-outline-warning"><b>Lieu</b></a>
				</div>
			</div>
			
		</div>
		
		
	
	</div>

</body>
</html>