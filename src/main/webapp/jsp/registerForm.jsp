<div id="registerDiv">
	<form id="registerForm" action="addSubscriber" method="post">
		<h2>S'inscrire</h2>
		<div class="form-group">
			<label for="lastname">Nom : </label>
			<input type="text" class="form-control" placeholder="Nom" name="lastName" id="lastname" required>
		</div>
		<div class="form-group">
			<label for="firstname">Prenom </label>
			<input type="text" class="form-control" placeholder="Prénom" name="firstName" id="firstname" required>
		</div>
		<div class="form-group">
			<label for="email">E-mail </label>
			<input type="email" class="form-control" placeholder="E-mail" name="email" id="email" required>
		</div>
		<div class="form-group">
			<label for="phone">Telephone </label>
			<input type="tel" class="form-control" pattern="[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}[0-9]{2}" placeholder="Téléphone" name="phone" id="phone" required>
		</div>
		<div class="form-group">
			<label for="password">Mot de passe </label>
			<input type="password" class="form-control" placeholder="Mot de passe" name="password" id="password" required>
		</div>
		<div class="buttonForm">
			<button type="submit" class="btn btn-primary">Inscription</button>
		</div>
	</form>
</div>