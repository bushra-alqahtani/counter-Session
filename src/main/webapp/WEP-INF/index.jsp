<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Counter</title>
<link rel='stylesheet' href='webjars/bootstrap/5.1.3/css/bootstrap.min.css'>
<link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
	<div class="container">
		
		<c:if test="${counter == 0}">
			<h1>Welcome User!</h1>
		</c:if>
		
		<c:if test="${counter !=0 }">
		<h4>You have Visited <a href="#">http://yourserver</a> <c:out value="${counter}"/></h4>
		<h4> <a href="/"> Test another Visit..</a></h4>
		</c:if>
	</div>
<script src="/main.js" type="text/javascript" ></script>
</body>
</html>