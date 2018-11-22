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

<title>Lieu : ${ location.locationName }</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
	<br>

	<h1>Lieu : ${ location.locationName }</h1>
	
	<div>
		<p><b>Nom du lieu : </b> ${ location.locationName }</p>
	</div>
	
	<div>
		<p><b>Adresse : </b>
		${ location.streetNumber } 
		${ location.street }</p> 
	</div>
	
	<div>
		<p><b>Code postal : </b> ${ location.postCode } 
		<b>Ville : </b> ${ location.city } 
		<b>Pays : </b> ${ location.country }</p>
	</div>

</body>
</html>