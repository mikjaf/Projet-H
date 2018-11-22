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
<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>

<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Confirmation d'inscription</h1>
	
	<p>Bravo <i>Prénom</i>, vous êtes inscrit !</p>
	
	<h2>Connectez-vous dès maintenant :</h2>
	
	<%@ include file="login.jsp" %>

</body>
</html>