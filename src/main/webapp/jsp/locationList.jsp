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
		
	<title>Liste des lieux</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	
	<div class="container1">
	
		<div class="divTable2">
		
			<div class="divTitle1">
				<h1>Liste des lieux</h1>
			</div>
			
			
				
				<table class="table table-bordered">
					<tr style="background-color: white">
						<th>Nom du lieu</th>
					</tr>
					
					<core:forEach var="location" items="${ locationList }">
						<tr>
							<td  class="table-warning"><a href="location/${ location.id }">${ location.locationName }</a></td>
							<td  class="table-warning">${ location.city }</td>
						</tr>
					</core:forEach>
				
				</table>
		</div>
		
	</div>

</body>
</html>