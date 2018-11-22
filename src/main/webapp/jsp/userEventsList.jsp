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
<link rel="stylesheet" href="css/style.css" type="text/css"/>
		
<title>Mes événements</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<br>
	
	<h1>Mes événements</h1>
	
	<div>
		<h2>Mes ateliers</h2>
	</div>
	
	<div>
		<h2>Mes réunions</h2>
	</div>
	
	<div>
		<h2>Mes matchs</h2>
	</div>
</body>
</html>