<%-- 
    Document   : roomsavailable
    Created on : Apr 15, 2015, 5:26:40 PM
    Author     : aashishvig
--%>

<%@page import="java.util.List"%>
<%@page import="session.Displayrooms"%>
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
                                            DisplayRoomSessionBeanRemote br;
                                            InitialContext ic = new InitialContext();
                                            Object o = ic.lookup(DisplayRoomSessionBeanRemote.class.getName());
                                            br = (DisplayRoomSessionBeanRemote) o;
                                            Displayrooms dr = new Displayrooms();

                                            List<Displayrooms> room = br.listRooms("AVAILABLE");
                                        %>
                                        <form>
                                            <fieldset>
                                                <legend>Available Rooms:</legend>
                                                <%
                                                    for (Displayrooms rooms : room) {
                                                        out.println("Room Number: " + rooms.getRoomnumber() + "</br>");
                                                        out.println("Room Type: " + rooms.getRoomtype() + "</br>");
                                                        out.println("Floor: " + rooms.getFloor() + "</br>");
                                                        out.println("Price: " + rooms.getPrice() + "</br>");
                                                        out.println("Availability: " + rooms.getAvailability() + "</br>");
                                                        out.println("<a href='book.jsp?rn=" + rooms.getRoomnumber() + "'>Book</a>" + "</br>" + "</br>");
                                                    }%>
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
                            </body>
                            </html>
