package Controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import session.DisplayRoomSessionBeanRemote;
import session.Displayrooms;
import session.RoomSessionBeanRemote;
import session.Rooms;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aashishvig
 */
public class AdminServlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession session = request.getSession();
            DisplayRoomSessionBeanRemote br;
            InitialContext ic = new InitialContext();
            Object o = ic.lookup(DisplayRoomSessionBeanRemote.class.getName());
            br = (DisplayRoomSessionBeanRemote) o;
            String action = request.getParameter("sub");
            String rn = request.getParameter("roomnumber");

            Displayrooms r = new Displayrooms();

            if (("Insert Room").equalsIgnoreCase(action)) {
                String roomType = request.getParameter("roomtype");
                String floor = request.getParameter("floor");
                String p = request.getParameter("price");
                BigDecimal roomnumber = new BigDecimal(rn);
                Double price = Double.parseDouble(p);

                r.setRoomnumber(roomnumber);
                r.setRoomtype(roomType);
                r.setFloor(floor);
                r.setPrice(price);
                r.setAvailability("AVAILABLE");
                boolean b = br.addRoom(r);
                
                response.sendRedirect("sucess.jsp");
            }

            if (action.equals("Delete Room")) {                
                BigDecimal roomnumber = new BigDecimal(rn);
                br.deleteRoom(roomnumber);
                response.sendRedirect("deleteRoomSucess.jsp");
            }
            
            if (("Update Room").equalsIgnoreCase(action)) {
                session.setAttribute("id", rn);
                response.sendRedirect("updateRoom.jsp");
            }

            if (action.equals("View Report")) {
                response.sendRedirect("adminreport.jsp");
            }
            
        } catch (Exception e) {
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
        processRequest(request, response);
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
        processRequest(request, response);
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
