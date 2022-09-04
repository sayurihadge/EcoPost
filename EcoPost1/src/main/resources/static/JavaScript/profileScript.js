/**
 * 
 */
 
 
 
 
 
 var loadFile = function(event) {
	const caption_input = document.getElementById('caption');
	var image = document.getElementById('display-image');
	image.src = URL.createObjectURL(event.target.files[0]);
	caption_display.innerHTML = caption_input.value;
};



