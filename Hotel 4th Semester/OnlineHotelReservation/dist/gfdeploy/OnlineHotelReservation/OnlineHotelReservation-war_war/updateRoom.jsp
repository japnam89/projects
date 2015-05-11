<%-- 
    Document   : updateRoom
    Created on : Apr 15, 2015, 3:25:00 PM
    Author     : aashishvig
--%>

<%@page import="java.math.BigDecimal"%>
<%@page import="session.Displayrooms"%>
<%@page import="java.util.List"%>
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
            String s1 = (String)session.getAttribute("id");
            BigDecimal rn = new BigDecimal(s1);
            Displayrooms rooms=br.getRoomByRoomNumber(rn);
            %>
            <form action ="UpdateServlet">
            <fieldset>
                <legend>Update Room</legend>
                Room Number :  <input id="roomnumber" name="roomnumber" type="text" value="<%= s1%>"></br>
                Room Type :  <input id="roomtype" name="roomtype" type="text" value=<%out.println(rooms.getRoomtype());%>></br>
                Floor :   <input id="floor" name="floor" type="text" value=<%out.println(rooms.getFloor());%>></br>
                Price :   <input id="price" name="price" type="text" value=<%out.println(rooms.getPrice());%>></br>
                <input type="submit" value="update" name ="sub">
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
