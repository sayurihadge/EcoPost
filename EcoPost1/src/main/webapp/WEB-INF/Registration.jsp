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
<title>Registration</title>
</head>
<body>
	<nav>
      <ul class="nav-bar">
        <li class="nav"><a href="/login">Login</a></li>
        <li class="nav"><a href="/">Home</a></li>
      </ul>
    </nav>
    <div id="register">
    	<h2>Register</h2>
		<form:form action="/register" method="post" modelAttribute="newUser">
			<div class="form-group">
				<form:errors path="name"/>
				<form:input path="name" class="form-control" type="text" name="username" placeholder="Name"/>
			</div>
			
			<div class="form-group">
				<form:errors path="email"/>
				<form:input path="email" class="form-control" type="text" name="email" placeholder="Email"/>
			</div>
			
			<div class="form-group">
				<form:errors path="password"/>
				<form:input path="password" class="form-control" type="text" name="password" placeholder="Password"/>
			</div>
			
			<div class="form-group">
				<form:errors path="confirm"/>
				<form:input path="confirm" class="form-control" type="confirm" name="confirm" placeholder="Confirm Password"/>
			</div>
			
			<br />
			 
			<input class="btn-top" type="submit" value="Register"/>
		</form:form>
		
		Already have an account?<a href="/login">Login</a>
	</div>
</body>
</html>