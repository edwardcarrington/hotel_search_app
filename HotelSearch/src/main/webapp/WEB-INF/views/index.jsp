<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>City Abroad</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
<link rel="shortcut icon" type="image" href="img/favicon.png"/>

</head>
<body>

  <form class="form-inline"  action="/results" autocomplete="off">

  <div align="center" class="col-md-12">
        <p><h1 class="page-header"><strong>City Abroad</strong></h1></p>
        <p><h2>Detroit's Leading Hotel Search App!</h2></p>
        <p>City Abroad makes booking hotels easy. Choose from hundreds of hotel discounts & deals. Pick the perfect place & save!</p>       
  
  <div class="wrapper">
		  <select class="form-control mb-2 mr-sm-2" id="city" name="city">
		  	<option value="">Find Hotels By City</option>
		  	<c:forEach items="${ cities }" var="city">
		  		<option <c:if test="${ city eq param.city }">selected</c:if>>${ city }</option>
		  	</c:forEach>
		  </select>

	<p><button type="submit" class="btn btn-dark">Search</button></p>
</div>
</div>
  
  </form>
</body>
</html>