/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.math.BigDecimal;
import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author aashishvig
 */
@Remote
public interface RoomSessionBeanRemote {
    public Rooms searchForRoom(BigDecimal id);
    public boolean bookRoom(Rooms addroom);
    public boolean deleteBooking(BigDecimal id);
    public boolean updateBooking(Rooms rm);
    public List<Rooms> listBooking();
    public List<Rooms> listBooking(String un);
    public List<Rooms> listBookingbyFloor(String f);
}
