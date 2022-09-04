<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="CSS/style.css" rel="stylesheet">
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
       integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
       crossorigin="anonymous"/>
	<title>Login</title>
</head>
<body>
    <nav>
      <ul class="nav-bar">
        <li class="nav"><a href="/login">Login</a></li>
        <li class="nav"><a href="/">Home</a></li>
      </ul>
    </nav>
    
    <div id="login">
    	<h2>Log In</h2>
		<form:form action="/login" method="post" modelAttribute="newLogin">
			<div class="form-group">
				<form:errors path="email"/>
				<form:input path="email" class="form-control" type="text" name="username" placeholder="Username"/>
			</div>
			
			<div class="form-group">
				<form:errors path="password"/>
				<form:input path="password" class="form-control" type="password" name="password" placeholder="Password"/>
			</div>
			
			<br />
			
			<input class="btn-top" type="submit" value="Login"/>
		</form:form>
		
		Don't have an account?<a href="/register">Sign Up</a>
	</div>
    
</body>
