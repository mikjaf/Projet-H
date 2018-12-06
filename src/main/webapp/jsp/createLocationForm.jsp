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
		
	<title>Ajouter un nouveau lieu</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<div class="container1">
	
		<div class="divTitle1">
			<h1>Ajouter un nouveau lieu</h1>
		</div>
		
		<div id="locationFormDiv">
		
			<form id="locationForm" method="post" action="location/createLocation">
				
				<div class="form-group">
					<label for="locationName">Nom du lieu</label>
					<input type="text" class="form-control" placeholder="Nom du lieu" id="locationName" name="locationName" required/>
				</div>
				
				<div class="form-group">
					<label for="streetNumber">Numéro de rue</label>
					<input type="text" class="form-control" placeholder="Numéro de rue" id="streetNumber" name="streetNumber" required />
				</div>
				
				<div class="form-group">
					<label for="street">Rue</label>
					<input type="text" class="form-control" placeholder="Nom de la rue" id="street" name="street" required />
				</div>
				
				<div class="form-group">
					<label for="postCode">Code postal</label>
					<input type="text" class="form-control" placeholder="Code postal" id="postCode" name="postCode" required />
				</div>
				
				<div class="form-group">
					<label for="city">Ville</label>
					<input type="text" class="form-control" placeholder="Nom de la ville" id="city" name="city" required />
				</div>
				
				<div class="form-group">
					<label for="country">Pays</label>
					<input type="text" class="form-control" placeholder="Nom du pays" id="country" name="country" required />
				</div>
				
				<div class="buttonForm">
					<button type="submit" class="btn btn-primary">Ajouter</button>
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