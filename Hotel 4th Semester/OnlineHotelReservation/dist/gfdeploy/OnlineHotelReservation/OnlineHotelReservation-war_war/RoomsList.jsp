<%-- 
    Document   : sample
    Created on : Apr 02, 2015, 8:20:36 PM
    Author     : JAPNAM
--%>


<%@page import="session.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="session.RoomSessionBeanRemote"%>
<%@page import="javax.naming.InitialContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
      <%
        InitialContext ic = new InitialContext();
        Object o = ic.lookup(RoomSessionBeanRemote.class.getName());
        RoomSessionBeanRemote cart = (RoomSessionBeanRemote) o;  
        List<Rooms> b=cart.listBooking();
        HttpSession sess=request.getSession();
        Rooms name;
        for(Rooms a:b)
        {
        out.println("<p>"+a.getRoomtype()+a.getAvailability()+a.getUsername()+a.getBookedfrom()+a.getBookedtill()+a.toString()+"</p>");
        }
      %>
         
    </body>
</html>

    </body>
</html>
