<html>
<head>
	<meta charset="ISO-8859-1">
	<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
</head>
<body>
	<h1>Accueil</h1>

	<h2>Se connecter</h2>
	
	<%@ include file="jsp/login.jsp" %>
	
	<br/>
	
	<h2>S'inscrire</h2>
	<form action="addSubscriber" method="post">
		<div class="registerForm">
			<label for="lastname">Nom </label>
			<input type="text" placeholder="Nom" name="lastName" id="lastname" required>
		</div>
		<div class="registerForm">
			<label for="firstname">Prenom </label>
			<input type="text" placeholder="Prénom" name="firstName" id="firstname" required>
		</div>
		<div class="registerForm">
			<label for="email">E-mail </label>
			<input type="email" placeholder="E-mail" name="email" id="email" required>
		</div>
		<div class="registerForm">
			<label for="phone">Telephone </label>
			<input type="tel" pattern="[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}" placeholder="Téléphone" name="phone" id="phone" required>
		</div>
		<div class="registerForm">
			<label for="password">Mot de passe </label>
			<input type="password" placeholder="Mot de passe" name="password" id="password" required>
		</div>
		<!-- <div class="registerForm">
			<label for="confirm_password">Confirmer mot de passe </label>
			<input type="password" placeholder="Confirmer mot de passe" name="confirm_password" id="confirm_password" required>
		</div> -->
		<div class="registerForm">
    		<input type="submit" value="Connexion">
  		</div>
	</form>
	

</body>
</html>
