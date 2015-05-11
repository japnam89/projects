<%-- 
    Document   : signup
    Created on : Apr 07, 2015, 9:10:55 PM
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
        <form name="register" action="SignupServlet">
            <fieldset>
    <legend>Register:</legend>
            User Id: <input type="text" name="userid" id="userid"><br><br>
            First Name: <input type="text" name="firstname" id="firstname"><br><br>
            Last Name: <input type="text" name="lastname" id="lastname"><br><br>
            User Name:<input type="text" name="username" id="username"><br><br>
            Password: <input type="password" name="password" id="password"><br><br>
            Type: <input type="text" name="usertype" id="usertype" readonly value="User"> <br><br>
           <input type="submit" name="Register" value="Register"><br><br>
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
