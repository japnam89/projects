/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.util.List;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;

/**
 *
 * @author aashishvig
 */
@Stateful
public class RegistrationSessionBean implements RegistrationSessionBeanRemote, RegistrationSessionBeanLocal {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @javax.persistence.PersistenceContext(unitName = "OnlineHotelReservation-ejbPU")
    private EntityManager em;

    @Override
    public List<Registration> getUserInfo() {
        List<Registration> list = em.createQuery("SELECT r FROM Registration r").getResultList();
        return list;
    }

    @Override
    public boolean addUser(Registration register) {
        try {
            em.persist(register);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
