<html>
<body>
	<h1>Accueil</h1>

	<h2>Se connecter</h2>
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
	
	<br/>
	
	<h2>S'inscrire</h2>
	<form action="jsp/registerConfirm.jsp" method="post" class="registerForm">
		<div class="registerForm">
			<label for="firstname">Prenom </label>
			<input type="text" placeholder="Prénom" name="firstname" id="firstname" required>
		</div>
		<div class="registerForm">
			<label for="lastname">Nom </label>
			<input type="text" placeholder="Nom" name="lastname" id="lastname" required>
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
		<div class="registerForm">
			<label for="confirm_password">Confirmer mot de passe </label>
			<input type="password" placeholder="Confirmer mot de passe" name="confirm_password" id="confirm_password" required>
		</div>
		<div class="registerForm">
    		<input type="submit" value="Connexion">
  		</div>
	</form>
	

</body>
</html>
