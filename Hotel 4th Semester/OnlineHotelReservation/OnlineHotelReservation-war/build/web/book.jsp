<%-- 
    Document   : book
    Created on : Apr 12, 2015, 8:20:36 PM
    Author     : JAPNAM
--%>


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
<script>
        function SetDate()
                {
                var m_names = new Array("Jan", "Feb", "Mar", 
"Apr", "May", "Jun", "Jul", "Aug", "Sep", 
"Oct", "Nov", "Dec");

var d = new Date();
var curr_date = d.getDate();
var curr_month = d.getMonth();
var curr_year = d.getFullYear();
var today =(curr_date + "-" + m_names[curr_month] 
+ "-" + curr_year);
document.getElementById("bookedfrom").value = today;
                }
                </script>
        <title>JSP Page</title>
        
    </head>
    <body onload="SetDate();">
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
                             DisplayRoomSessionBeanRemote br;
                             InitialContext ic = new InitialContext();
                             Object o = ic.lookup(DisplayRoomSessionBeanRemote.class.getName());
                             br = (DisplayRoomSessionBeanRemote) o;

                             BigDecimal rn = new BigDecimal(request.getParameter("rn"));
                             Displayrooms rooms = br.getRoomByRoomNumber(rn);
                         %>
        
        <form name="rooms" action="UserServlet">
            <fieldset>
                <legend>Book Room:</legend>
                Booking Id: <input type="text" id="bookingid" name="bookingid" readonly value=<%out.println(rooms.getRoomnumber());%>><br><br>
                Room Number: <input type="text" id="roomnumber" name="roomnumber" readonly value=<%out.println(rooms.getRoomnumber());%>><br><br>
                Room Type: <input type="text" id="roomtype" name="roomtype" readonly value=<%out.println(rooms.getRoomtype());%>><br><br>
                Booked From: <input type="text" id="bookedfrom" name="bookedfrom" type="date"><br><br>
                Booked Till: <input type="date" id="bookedtill" name="bookedtill" placeholder="dd-mon-yyyy"><br><br>
                Floor: <input type="text" id="floor" name="floor" readonly value=<%out.println(rooms.getFloor());%>><br><br>

                <input type="submit" name="sub" value="Book Room"><br><br>
            </fieldset>
        </form>
            </div>
              </div> 
        </div>
        <div id="footer">
    
	
    
    <div id="footer_left">
		
		Copyright © 2048 <a href="#">Company Name</a><br />
		
       
    </div>
	
    <div class="cleaner"></div>
</div>
            <%%>
    </body>
</html>
