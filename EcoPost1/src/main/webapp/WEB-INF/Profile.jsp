<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="CSS/style.css" rel="stylesheet">
<script src="JavaScript/profileScript.js" ></script>
<script src="JavaScript/feedScript.js" ></script>


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

      	<h2 id="profile_page">Profile Page</h2>
                <a id="followers">Followers: 256 </a>
                <a id="following">Following: 230 </a>
                <a id="points">Points: 32 </a> 
                <br><br><br><br>

                <center><br>
                Caption:
                <br></center>
                <textarea id="caption" type="text" name="text" rows="3" cols="50" style="margin-left: 38%;"></textarea>
                <br>
                <center><input id="button" type="submit"></center>
                <br>
                <p><input type="file"  accept="image/*" name="image" id="file" onchange="loadFile(event)" style="display: none;"></p>
                <p><label for="file" id="upload" class="btn-top" style="cursor: pointer; text-align:center; margin-left:45%">Upload Image</label></p>
           

                <h4 id="allPosts">All Posts</h4>
                <center><h4 id="caption_display" width="25%"></h4></center>
                <p><img id="display-image" width="25%" /></p>
                <br>
                
                
                <center><h4 style="position: relative; margin-left:25%; margin-right:25%;"> @iiyanka: I spent the day with my son planting some plants and treets in our front yard. I can't wait to see how they grow over the months! We will keep you guys updated!</h4> </center>

            <div class="grid">
            <div class="grid-item"> <img src="Images/tree.jpeg" width=45%> </div>
</body>
</html>