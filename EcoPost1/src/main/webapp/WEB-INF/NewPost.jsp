<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Post</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/feed">EcoPost</a>

            <div>
	         	<ul class="navbar-nav mr-auto">
		           <li class="nav-item">
		               <a class="nav-link" href="/feed">For You</a>
		           </li>
		           <li class="nav-item">
		               <a class="nav-link" href="/profile">Profile</a>
		           </li>
		           <li class="nav-item">
		             <a class="nav-link" href="/logout">Logout</a>
		           </li>
	         	</ul>
       		</div>
            
          </nav>

          <h2 id="upload">Upload New Post</h2>
          <form:form action="/newPost" method="post" modelAttribute="post">
            
            
            <div id="caption">
              <form:label path="caption">Caption: </form:label>
			  <form:errors path="caption"/>
              <br>
              <form:textarea path="caption" id="text" name="text" rows="3" cols="50"/>
            </div>
            <input class="btn-top" type="submit" value="Submit">
          </form:form>
</body>
</html>