<%-- 
    Document   : login
    Created on : Apr 06, 2015, 11:20:22 AM
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
                  <h2>User Login</h2>
                 
               
        <%
        if(session!=null)
        {
        session.invalidate();
        }
        %>
        <form name="login" action="LoginServlet">
            Username:<input type="text" name="uname" placeholder="UserName" >
            Password:<input type="password" name="pwd" placeholder="Password" >
            <input type="submit" value="Login" name="submit"><a href="signup.jsp">Register</a>
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
