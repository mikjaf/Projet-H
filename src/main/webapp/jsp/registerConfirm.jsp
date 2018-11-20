<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Confirmation d'inscription</title>
	<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
</head>

<body>

	<h1>Confirmation d'inscription</h1>
	
	<p>Bravo <i>Prénom</i>, vous êtes inscrit !</p>
	
	<h2>Connectez-vous dès maintenant :</h2>
	
	<form action="jsp/dashboard.jsp" method="post" class="loginnForm">
		<div class="loginnForm">
			<label for="email">E-mail : </label>
			<input type="email" name="email" id="email" required>
		</div>
		<div class="loginnForm">
			<label for="password">Mot de passe : </label>
			<input type="password" name="password" id="password" required>
		</div>
		<div class="loginnForm">
    		<input type="submit" value="Connexion">
  		</div>
	</form>

</body>
</html>