/*
image slider code starts here. idea taken from website like lynda.com,newboston etc.
*/
var i = 0; 
var array_images = new Array("1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"); 

 
 function changeImage() { 
 document.getElementById("slide").src = array_images[i]; 
 if(i < array_images.length - 1) 
 i++; 
 else i = 0; 
 setTimeout("changeImage()",2000); 
 }
 window.onload=changeImage; 





