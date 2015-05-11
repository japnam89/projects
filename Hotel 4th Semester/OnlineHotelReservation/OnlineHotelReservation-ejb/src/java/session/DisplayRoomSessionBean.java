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
public class DisplayRoomSessionBean implements DisplayRoomSessionBeanRemote, DisplayRoomSessionBeanLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @javax.persistence.PersistenceContext(unitName = "OnlineHotelReservation-ejbPU")
    private EntityManager em;

    @Override
     public Displayrooms getRoomByRoomNumber(BigDecimal rn) {
        Query q = em.createNamedQuery("Displayrooms.findByRoomnumber");
        q.setParameter("roomnumber", rn);
        return (Displayrooms) q.getSingleResult();
    }
     
     
    @Override
    public boolean addRoom(Displayrooms room) {
        try {
            em.persist(room);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteRoom(BigDecimal id) {
        try {
            Displayrooms room = (Displayrooms) em.find(Displayrooms.class, id);
            em.remove(em.merge(room));
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    @Override
    public void updateRoom(Displayrooms rm) {
        try{
             Displayrooms updatedroom=em.find(Displayrooms.class, rm.getRoomnumber());
             updatedroom.setRoomnumber(rm.getRoomnumber());
             
             updatedroom.setFloor(rm.getFloor());
             updatedroom.setAvailability(rm.getAvailability());
             updatedroom.setRoomtype(rm.getRoomtype());
             updatedroom.setPrice(rm.getPrice());
        }
        catch(Exception ex)
        {
            ex.printStackTrace();  
        }
    
    }

    
    @Override
    public List<Displayrooms> listRooms() {
       Query q = em.createNamedQuery("Displayrooms.findAll");
        List all = q.getResultList();
        return all;
}

    @Override
    public List<Displayrooms> listRooms(String a) {
       Query q = em.createNamedQuery("Displayrooms.findByAvailability");
       q.setParameter("availability", a);
        List all = q.getResultList();
        return all;
}
}
