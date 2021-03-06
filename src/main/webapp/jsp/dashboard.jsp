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
		
	<title>Dashboard</title>

</head>

<body>
	<jsp:include page="header.jsp" />
	
	<div class="container1">
	
		
		<div id="dashboard1">
		
			<div id="dashboard2">
			
				<div>
				</div>
				
				<div class="divTitle1">
					<h1>Dashboard</h1>
				</div>
				
				<div class="divTitle1">
					<a href="event/createEvent" class="btn btn-info">Ajouter un nouvel �l�ment</a>
				</div>
				
			</div>
			<div id="dashboard3">
				<table class="table table-bordered">
					<tr style="background-color: white">
						<th>Type de l'�v�nement</th>
						<th>Titre</th>
						<th>Date</th>
					</tr>
					
					<core:forEach var="event" items="${ eventsList }">
					<tr>
						<core:choose>
							<core:when test="${ event.eventType == 'Atelier' }">
								<td class="table-primary"><a href="event/workshop/${ event.id }">${ event.title }</a></td>
							</core:when>
							<core:when test="${ event.eventType == 'Reunion' }">
								<td class="table-success"><a href="event/meeting/${ event.id }">${ event.title }</a></td>
							</core:when>
							<core:when test="${ event.eventType == 'Match' }">
								<td class="table-danger"><a href="event/match/${ event.id }">${ event.title }</a></td>
							</core:when>
						</core:choose>
						
						<core:choose>
							<core:when test="${ event.eventType == 'Atelier' }">
								<td class="table-primary">${ event.eventType }</td>
							</core:when>
							<core:when test="${ event.eventType == 'Reunion' }">
								<td class="table-success">${ event.eventType }</td>
							</core:when>
							<core:when test="${ event.eventType == 'Match' }">
								<td class="table-danger">${ event.eventType }</td>
							</core:when>
						</core:choose>
						
						<core:choose>
							<core:when test="${ event.eventType == 'Atelier' }">
								<td class="table-primary"><fmt:formatDate value="${ event.date }" pattern="EEEE dd MMMM" /></td>
							</core:when>
							<core:when test="${ event.eventType == 'Reunion' }">
								<td class="table-success"><fmt:formatDate value="${ event.date }" pattern="EEEE dd MMMM" /></td>
							</core:when>
							<core:when test="${ event.eventType == 'Match' }">
								<td class="table-danger"><fmt:formatDate value="${ event.date }" pattern="EEEE dd MMMM" /></td>
							</core:when>
						</core:choose>
					</tr>
					</core:forEach>
				</table>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="js/script.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	
</body>
</html>