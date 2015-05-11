<%-- 
    Document   : contactus
    Created on : Apr 15, 2015, 11:35:25 PM
    Author     : aashishvig
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="coda-slider.css" type="text/css" charset="utf-8" />

           <script
    src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>
var map;
function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(43.686677, -79.604265)
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

        <title>JSP Page</title>
    </head>
    <body>
        <div id="slider">
	<div id="tooplate_wrapper">
        <div id="tooplate_sidebar">
		
<!--            <div id="header">
                <h1><a href="#"><img src="images/tooplate_logo.png" title="Notebook Template - tooplate.com" alt="Notebook free html template" /></a></h1>
            </div>    -->
			
            <div id="menu">
                <ul class="navigation">
                    <li><a href="main.jsp" class="selected menu_01">Home</a></li>
                    <li><a href="admin.jsp" class="menu_02">Admin</a></li>
                    <li><a href="login.jsp" class="menu_03">User</a></li>
                     <li><a href="mainguest.jsp" class="menu_05">Guest</a></li>
                    <li><a href="gallery.jsp" class="menu_04">Gallery</a></li>
                    <li><a href="contactus.jsp" class="menu_05">Contact</a></li>
                   
                </ul>
            </div>
		</div> <!-- end of sidebar -->  
    
        <div id="content">
          <div class="scroll">
            <div class="scrollContainer">
              <div class="panel" id="home">
                <div class="content_section">
                     <div class="content_section last_section">
         
              <div class="panel" id="contactus">
                <h1>Contact Information</h1>
                
               
                <div id="map-canvas" style="height:120px; width:200px"></div> 
                <div class="cleaner_h10"></div>
				
                <div class="col_380 float_l">
                  <div id="contact_form">
                    <form method="post" name="contact" action="#">
                      <label for="author">Name:</label>
                      <input type="text" maxlength="40" id="author" class="input_field" name="author" />
                      <div class="cleaner_h10"></div>
                      <label for="email">Email:</label>
                      <input type="text" maxlength="40" id="email" class="input_field" name="email" />
                      <div class="cleaner_h10"></div>
                      <label for="subject">Subject:</label>
                      <input type="text" maxlength="40" id="subject" class="input_field" name="subject" />
                      <div class="cleaner_h10"></div>
                      <label for="text">Message:</label>
                      <textarea id="text" name="text" rows="1" cols="1" class="required"></textarea>
                      <div class="cleaner_h10"></div>
                      <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
                      <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                     <div class="cleaner_h10"></div>
                      
                    </form>
                     
                  </div>
                </div>
                 </div>
              </div> 
        </div>
        <div id="footer">
    
	<div id="social_box">
		<a href="#"><img src="images/facebook.png" alt="facebook" /></a>
        <a href="#"><img src="images/flickr.png" alt="flickr" /></a>
        <a href="#"><img src="images/myspace.png" alt="myspace" /></a>
        <a href="#"><img src="images/twitter.png" alt="twitter" /></a>
        <a href="#"><img src="images/youtube.png" alt="youtube" /></a>
    </div>
    
    <div id="footer_left">
		
		Copyright © 2048 <a href="#">Company Name</a><br />
		
       
    </div>
	
    <div class="cleaner"></div>
</div>
        
        
    </body>
</html>
