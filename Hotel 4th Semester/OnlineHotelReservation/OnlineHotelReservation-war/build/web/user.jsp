<%-- 
    Document   : user
    Created on : Apr 07, 2015, 8:20:36 PM
    Author     : JAPNAM
--%>


<%@page import="session.Displayrooms"%>
<%@page import="session.DisplayRoomSessionBean"%>
<%@page import="session.DisplayRoomSessionBeanRemote"%>
<%@page import="session.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="session.RoomSessionBeanRemote"%>
<%@page import="javax.naming.InitialContext"%>
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
         

                         <a href="roomsavailable.jsp"><input type="button" value ="Available Rooms" /><br>
                             <a href="bookedRoom.jsp"><input type="button" value ="Booked Rooms" /><br>
                            <jsp:include page="logout.jsp"></jsp:include>
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
