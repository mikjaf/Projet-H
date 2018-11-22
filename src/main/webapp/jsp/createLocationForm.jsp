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
<title>Ajouter un lieu</title>
</head>
<body>

	<h2>Ajouter un nouveau lieu</h2>
	
	<form method="post" action="location/createLocation">
		<div class="locationForm">
			<label for="locationName">Nom du lieu</label>
			<input type="text" placeholder="Nom du lieu" id="locationName" name="locationName" required/>
		</div>
		<div>
			<label for="streetNumber">Numéro de rue</label>
			<input type="text" placeholder="Numéro de rue" id="streetNumber" name="streetNumber" required />
		</div>
		<div>
			<label for="street">Rue</label>
			<input type="text" placeholder="Nom de la rue" id="street" name="street" required />
		</div>
		<div>
			<label for="postCode">Code postal</label>
			<input type="text" placeholder="Code postal" id="postCode" name="postCode" required />
		</div>
		<div>
			<label for="city">Ville</label>
			<input type="text" placeholder="Nom de la ville" id="city" name="city" required />
		</div>
		<div>
			<label for="country">Pays</label>
			<input type="text" placeholder="Nom du pays" id="country" name="country" required />
		</div>
		<div>
			<input type="submit" value="Ajouter" />
		</div>
		
	</form>

</body>
</html>