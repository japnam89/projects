 <%-- 
    Document   : guest
    Created on : Apr 15, 2015, 4:59:12 PM
    Author     : aashishvig
--%>

<%@page import="java.util.List"%>
<%@page import="session.Displayrooms"%>
<%@page import="session.DisplayRoomSessionBeanRemote"%>
<%@page import="session.RoomSessionBeanRemote"%>
<%@page import="javax.naming.InitialContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="coda-slider.css" type="text/css" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
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
                

         
              <%
            DisplayRoomSessionBeanRemote br;
            InitialContext ic = new InitialContext();
            Object o = ic.lookup(DisplayRoomSessionBeanRemote.class.getName());
            br = (DisplayRoomSessionBeanRemote) o;
            Displayrooms dr = new Displayrooms();        
        List<Displayrooms> room=br.listRooms("AVAILABLE"); 
  
        for(Displayrooms rooms:room)
{ 
   out.println("Room Number: "+rooms.getRoomnumber()+"</br>");
            
out.println("Room Type: "+rooms.getRoomtype()+"</br>");
out.println("Floor: "+rooms.getFloor()+"</br>");
out.println("Price: "+rooms.getPrice()+"</br>");
out.println("Availability: "+rooms.getAvailability()+"</br>"+"</br>");}%>

<a href="main.jsp"><input type="button" value="Home"/></a>
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
