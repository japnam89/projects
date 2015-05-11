/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author aashishvig
 */
@Remote
public interface RegistrationSessionBeanRemote {
    public List<Registration> getUserInfo();
    public boolean addUser(Registration register);
}
