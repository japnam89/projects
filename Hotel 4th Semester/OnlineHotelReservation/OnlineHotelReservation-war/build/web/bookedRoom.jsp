<%-- 
    Document   : bookedRoom
    Created on : Apr 12, 2015, 8:20:36 PM
    Author     : JAPNAM
--%>


<%@page import="java.util.List"%>
<%@page import="session.Rooms"%>
<%@page import="session.RoomSessionBeanRemote"%>
<%@page import="session.Displayrooms"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="session.DisplayRoomSessionBeanRemote"%>
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
         

        <%
            RoomSessionBeanRemote br;
            InitialContext ic = new InitialContext();
            Object o = ic.lookup(RoomSessionBeanRemote.class.getName());
            br = (RoomSessionBeanRemote) o;
            String user = (String) session.getAttribute("userName");

            List<Rooms> rooms = br.listBooking(user);
            out.println("Welcome User " + "</br>" + "Your Booked Rooms :  " + "</br>"+"</br>");
            for (Rooms room : rooms) {
                out.println("<form action='UserServlet'>");
                out.println("Booking Id: "+"<input type='text' name='bookingid' value=" + room.getBookingid() + " ' readonly>"+"</br>");
                out.println("Room Number: "+"<input type='text' name='roomnumber' value=" + room.getRoomnumber() + " ' readonly>"+"</br>");
                out.println("Room Type: "+"<input type='text' name='roomtype' value=" + room.getRoomtype() + " ' readonly>"+"</br>");
                out.println("Booked From: "+"<input type='date' name='bookedfrom' value=" + room.getBookedfrom().toLocaleString() + ">"+"</br>");
                out.println("Booked Till: "+"<input type='date' name='bookedtill' value=" + room.getBookedtill().toLocaleString() + ">"+"</br>");
                out.println("<input type='submit' name='sub' value='Update Booking'>");
                out.println("<input type='submit' name='sub' value='Cancel Booking'></form></br>");
            }
        %>
       <a href="roomsavailable.jsp"><input type="button" value ="Book New Room" />
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
