<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Search Results</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
<link rel="shortcut icon" type="image" href="img/favicon.png"/>

</head>
<body>
	
	<main class="container" align="center">
		<p><h1><strong>Hotel Search Results</strong></h1></p>
		
		<table class="table">
			<thead>
			<tr>
				<th>City</th><th>Description</th><th>Price</th>
			</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${hotels}" var="hotel">
				<tr>
					<td>${hotel.city}</td><td>${hotel.name}</td><td>${hotel.pricePerNight}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
	<p><a href="/" class="btn btn-dark">Back To Search</a></p>
	</main>
	
</body>
</html>
