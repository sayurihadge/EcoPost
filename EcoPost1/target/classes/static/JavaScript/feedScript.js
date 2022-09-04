var totalUpvotes_Yanka = 0;
var totalDownvotes_Yanka = 0;

var totalUpvotes_Isha = 0;
var totalDownvotes_Isha = 0;

var totalUpvotes_Raiya = 0;
var totalDownvotes_Raiya = 0;

var totalUpvotes_Sayuri = 0;
var totalDownvotes_Sayuri = 0

var result_Yanka_upvote = document.getElementById ("result_Yanka_upvote");
var result_Yanka_downvote = document.getElementById ("result_Yanka_downvote");

var result_Isha_upvote = document.getElementById ("result_Isha_upvote");
var result_Isha_downvote = document.getElementById ("result_Isha_downvote");

var result_Raiya_upvote = document.getElementById ("result_Raiya_upvote");
var result_Raiya_downvote = document.getElementById ("result_Raiya_downvote");

var result_Sayuri_upvote = document.getElementById ("result_Sayuri_upvote");
var result_Sayuri_downvote = document.getElementById ("result_Sayuri_downvote");

document.getElementById ("numUpvotes_Yanka").addEventListener("click", tallyUpvotes_Yanka);
document.getElementById ("numDownvotes_Yanka").addEventListener("click", tallyDownvotes_Yanka);

document.getElementById ("numUpvotes_Isha").addEventListener("click", tallyUpvotes_Isha);
document.getElementById ("numDownvotes_Isha").addEventListener("click", tallyDownvotes_Isha);

document.getElementById ("numUpvotes_Raiya").addEventListener("click", tallyUpvotes_Raiya);
document.getElementById ("numDownvotes_Raiya").addEventListener("click", tallyDownvotes_Raiya);

document.getElementById ("numUpvotes_Sayuri").addEventListener("click", tallyUpvotes_Sayuri);
document.getElementById ("numDownvotes_Sayuri").addEventListener("click", tallyDownvotes_Sayuri);


function tallyUpvotes_Yanka(){
  totalUpvotes_Yanka ++;
  result_Yanka_upvote.innerHTML = totalUpvotes_Yanka;
}

function tallyDownvotes_Yanka(){
  totalDownvotes_Yanka++;
  result_Yanka_downvote.innerHTML = totalDownvotes_Yanka;
}


function tallyUpvotes_Isha(){
  totalUpvotes_Isha++;
  result_Isha_upvote.innerHTML = totalUpvotes_Isha;
}

function tallyDownvotes_Isha(){
  totalDownvotes_Isha++;
  result_Isha_downvote.innerHTML = totalDownvotes_Isha;
}



function tallyUpvotes_Raiya(){
  totalUpvotes_Raiya++;
  result_Raiya_upvote.innerHTML = totalUpvotes_Raiya;
}

function tallyDownvotes_Raiya(){
  totalDownvotes_Raiya++;
  result_Raiya_downvote.innerHTML = totalDownvotes_Raiya;
}



function tallyUpvotes_Sayuri(){
  totalUpvotes_Sayuri++;
  result_Sayuri_upvote.innerHTML = totalUpvotes_Sayuri;
}

function tallyDownvotes_Sayuri(){
  totalDownvotes_Sayuri++;
  result_Sayuri_downvote.innerHTML = totalDownvotes_Sayuri;
}

function getFollowers(){
	followers_Sayuri.innerHTML = totalUpvotes_Sayuri;
}


document.getElementById("res").innerHTML = result_Sayuri_upvote;

