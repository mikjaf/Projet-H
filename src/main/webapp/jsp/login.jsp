<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<base href="<%=request.getScheme() + "://"
		+ request.getServerName() + ":"
		+ request.getServerPort()
		+ request.getContextPath() + "/"
		%>" />
</head>
<body>


<form action="connect" method="post" class="loginnForm">
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