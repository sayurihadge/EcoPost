<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<link rel="stylesheet" href="CSS/style.css" />
	<script src="JavaScript/feedScript.js" defer></script>
	<title>Feed</title>
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

    <!-- TODO: Update the heading with the name of your portfolio page -->
    <center><h1>Your Feed</h1></center>
<br>
<!-- First post on feed -->
<h3>
  @iiyanka: 
     I spent the day with my son planting some plants and treets in our front yard. I can't wait to see how they grow over the months! We will keep you guys updated!
   <br>
</h3>
 <div class="flex-container">
   <div class = "post_image" >
     <img src="Images/tree.jpeg" style="height: 280px;" alt="oopsies">
   </div>
   <div>
     <div>
       <button class="btn" id = "numUpvotes_Yanka"> <img src="Images/upvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
        <h4 id="result_Yanka_upvote" style= "text-align:left; display:inline;"></h4>
      </div>
      <br>
      <div>
       <button class="btn" id = "numDownvotes_Yanka"> <img src="Images/downvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
       <h4 id="result_Yanka_downvote" style= "text-align:left; display: inline"></h4>
     </div>
   </div>
 </div>

<br><br><br>

<!-- Second post on feed-->
<h3>
  @i_singhing_in_the_rain:
     On my way to plant some trees in my brand new Honda. The drive is three hours long, but the view is so worth it!
   <br>
</h3>
<div class="flex-container">
  <div class = "post_image" >
    <img src="Images/car.jpeg" style="height: 280px;" alt="oopsies">
  </div>
  <div>
    <div>
      <button class="btn" id = "numUpvotes_Isha"> <img src="Images/upvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
       <h4 id="result_Isha_upvote" style= "text-align:left; display:inline;"></h4>
     </div>
     <br>
     <div>
      <button class="btn" id = "numDownvotes_Isha"> <img src="Images/downvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
      <h4 id="result_Isha_downvote" style= "text-align:left; display: inline"></h4>
    </div>
  </div>
</div>

<br><br><br>

<!-- Third post on feed -->
<h3>
  @raiy_raiy:
     I'm at the beach today! It is so sunny and nice. The trash on the sand is not so nice, so I'm just removing it to help the environment!
   <br>
</h3>
<div class="flex-container">
  <div class = "post_image" >
    <img src="Images/sand.jpeg" style="height: 280px;" alt="oopsies">
  </div>
  <div>
    <div>
      <button class="btn" id = "numUpvotes_Raiya"> <img src="Images/upvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
       <h4 id="result_Raiya_upvote" style= "text-align:left; display:inline;"></h4>
     </div>
     <br>
     <div>
      <button class="btn" id = "numDownvotes_Raiya"> <img src="Images/downvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
      <h4 id="result_Raiya_downvote" style= "text-align:left; display: inline"></h4>
    </div>
  </div>
</div>

<br><br><br>
<!-- Fourth post on feed -->
<h3>
  @sayuuuuuu:
     I just did my recycling for the week! I hope they get turned into great things later!
   <br>
</h3>
<div class="flex-container">
  <div class = "post_image" >
    <img src="Images/trash.jpeg" style="height: 280px;" alt="oopsies">
  </div>
  <div>
    <div>
      <button class="btn" id = "numUpvotes_Sayuri"> <img src="Images/upvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
       <h4 id="result_Sayuri_upvote" style= "text-align:left; display:inline;"></h4>
     </div>
     <br>
     <div>
      <button class="btn" id = "numDownvotes_Sayuri"> <img src="Images/downvote.png" style="height: 30px; width: 35px; background-color: #94E194; alt="oopsies""></button>
      <h4 id="result_Sayuri_downvote" style= "text-align:left; display: inline"></h4>
    </div>
  </div>
</div>

<br><br><br>

<br><br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>  <br> <br> <br> <br> <br> <br> <br> <br> <br> <br><br><br> <br> <br> <br>

</body>
</html>