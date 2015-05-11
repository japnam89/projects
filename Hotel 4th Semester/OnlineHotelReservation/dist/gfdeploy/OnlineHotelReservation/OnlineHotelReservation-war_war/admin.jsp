<%-- 
    Document   : admin
    Created on : Apr 07, 2015, 5:20:36 PM
    Author     : JAPNAM
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="coda-slider.css" type="text/css" charset="utf-8" />


        <title>JSP Page</title>
    </head>
    <body>
        <div id="slider">
	<div id="tooplate_wrapper">
        <div id="tooplate_sidebar">
		

			
            <div id="menu">
                <ul class="navigation">
                     <li><a href="main.jsp" class="selected menu_01">Home</a></li>
                    <li><a href="loginadmin.jsp" class="menu_02">Admin</a></li>
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
       
        <form name="rooms" action="AdminServlet">
            <fieldset>
    <legend>Room Details:</legend>
            Room Number: <input type="text" name="roomnumber" id="roomnumber"><br>
            Room Type: <select name="roomtype">
                <option value="single">Single</option>
                <option value="double">Double</option>
                <option value="suite">Suite</option>
            </select><br>
            Floor: <input type="text" name="floor" id="floor"><br>
            Price: <input type="text" name="price" id="price"><br>
            <input type="submit" name="sub" value="Insert Room">
            <input type="submit" name="sub" value="Update Room">
            <input type="submit" name="sub" value="Delete Room"><br>
            <input type="submit" name="sub" value="View Report"><br>
            </fieldset>
        </form>
        <br><jsp:include page="logout.jsp"></jsp:include>
          </div>
              </div> 
        </div>
        <div id="footer">
    
	
    
    <div id="footer_left">
		
		Copyright © 2048 <a href="#">Company Name</a><br />
		
       
    </div>
	
    <div class="cleaner"></div>
</div>
    </body>
</html>
