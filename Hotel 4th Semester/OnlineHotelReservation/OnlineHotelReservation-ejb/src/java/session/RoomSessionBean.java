/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.math.BigDecimal;
import java.util.List;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 *
 * @author aashishvig
 */
@Stateful
public class RoomSessionBean implements RoomSessionBeanRemote, RoomSessionBeanLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @javax.persistence.PersistenceContext(unitName = "OnlineHotelReservation-ejbPU")
    private EntityManager em;

    @Override
    public Rooms searchForRoom(BigDecimal id) {
        Rooms customer = (Rooms)em.find(Rooms.class, id);
        return customer;
    }
    
    @Override
    public boolean bookRoom(Rooms br) {
        try {
            em.persist(br);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteBooking(BigDecimal id) {
        try {
            Rooms r = (Rooms) em.find(Rooms.class, id);
            em.remove(em.merge(r));
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateBooking(Rooms r1) {
        try {
            Rooms r = em.find(Rooms.class, r1.getBookingid());
            r.setBookedfrom(r1.getBookedfrom());
            r.setBookedtill(r1.getBookedtill());
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Rooms> listBooking() {
        List<Rooms> b = em.createQuery("SELECT r FROM Rooms r").getResultList();
        return b;
    }

    @Override
    public List<Rooms> listBooking(String un) {
        Query q = em.createNamedQuery("Rooms.findByUsername");
        q.setParameter("username", un);
        List all = q.getResultList();
        return all;
    }

    @Override
    public List<Rooms> listBookingbyFloor(String f) {
        Query q = em.createNamedQuery("Rooms.findByFloor");
        q.setParameter("floor", f);
        List all = q.getResultList();
        return all;
    }
}
