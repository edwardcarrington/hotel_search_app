<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Search</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>

    <div class="col-md-6">
         <h1 class="page-header">Hotel Search App</h1>
          <form class="form-inline"  action="/results" autocomplete="off">
         <p>City Abroad makes booking hotels easy. Choose from hundreds of hotel discounts & deals. Pick the perfect place & save!</p>         
    </div>

<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Search City
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="${ city.detroit }">Detroit</a>
    <a class="dropdown-item" href="${ city.grand_rapids }">Grand Rapids</a>
    <a class="dropdown-item" href="${ city.toronto }">Toronto</a>
  </div>
</div>

</body>
</html>