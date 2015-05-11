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
public interface DisplayRoomSessionBeanRemote {
    public Displayrooms getRoomByRoomNumber(BigDecimal rn);
    public boolean addRoom(Displayrooms addroom);
    public boolean deleteRoom(BigDecimal id);
    //public boolean updateRoom(Displayrooms rm);
    public void updateRoom(Displayrooms rm);
    public List<Displayrooms> listRooms();
    public List<Displayrooms> listRooms(String a);
}
