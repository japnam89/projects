package Controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.DisplayRoomSessionBeanRemote;
import session.Displayrooms;
import session.RoomSessionBeanRemote;
import session.Rooms;

/**
 *
 * @author aashishvig
 */
public class UserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NamingException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            RoomSessionBeanRemote br;
            InitialContext ic = new InitialContext();
            Object o = ic.lookup(RoomSessionBeanRemote.class.getName());
            br = (RoomSessionBeanRemote) o;

            DisplayRoomSessionBeanRemote brr;

            Object o1 = ic.lookup(DisplayRoomSessionBeanRemote.class.getName());
            brr = (DisplayRoomSessionBeanRemote) o1;

            String action = request.getParameter("sub");

            String rn = request.getParameter("roomnumber");
          
            Rooms r = new Rooms();
            Displayrooms dr = new Displayrooms();
            
            if (action.equals("Book Room")) {
                String bid = request.getParameter("bookingid");
                String roomType = request.getParameter("roomtype");
                String dateBookedFrom = request.getParameter("bookedfrom");
                String dateBookedTill = request.getParameter("bookedtill");
                String floor = request.getParameter("floor");
                BigDecimal bookingid = new BigDecimal(bid);
                BigDecimal roomnumber = new BigDecimal(rn);

                DateFormat format = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
                java.util.Date bookedfrom = format.parse(dateBookedFrom);
                java.util.Date bookedtill = format.parse(dateBookedTill);
                dr.setRoomnumber(roomnumber);
                r.setRoomnumber(dr);
                r.setBookingid(bookingid);
                r.setBookedfrom(bookedfrom);
                r.setBookedtill(bookedtill);
                r.setFloor(floor);
                r.setRoomtype(roomType);
                r.setAvailability("Booked");
                r.setUsername((String) session.getAttribute("userName"));
                Boolean b = br.bookRoom(r);

                dr.setAvailability("Booked");
                brr.updateRoom(dr);
                response.sendRedirect("bookedRoom.jsp");
            }
            if (action.equals("Update Booking")) {
                String bid = request.getParameter("bookingid");
                String dateBookedFrom = request.getParameter("bookedfrom");
                String dateBookedTill = request.getParameter("bookedtill");
                BigDecimal bookingid = new BigDecimal(bid);
                DateFormat format = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
                java.util.Date bookedfrom = format.parse(dateBookedFrom);
                java.util.Date bookedtill = format.parse(dateBookedTill);
                r.setBookingid(bookingid);
                r.setBookedfrom(bookedfrom);
                r.setBookedtill(bookedtill);
                boolean b = br.updateBooking(r);
                out.println(b);
                response.sendRedirect("bookedRoom.jsp");
            }

            if (action.equals("Cancel Booking")) {
                String bid = request.getParameter("bookingid");
                BigDecimal bookingid = new BigDecimal(bid);
                dr.setAvailability("AVAILABLE");
                brr.updateRoom(dr);
                br.deleteBooking(bookingid);
                response.sendRedirect("bookedRoom.jsp");
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NamingException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NamingException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
