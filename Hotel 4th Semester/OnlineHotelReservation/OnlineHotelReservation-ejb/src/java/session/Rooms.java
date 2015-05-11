/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aashishvig
 */
@Entity
@Table(name = "ROOMS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rooms.findAll", query = "SELECT r FROM Rooms r"),
    @NamedQuery(name = "Rooms.findByRoomtype", query = "SELECT r FROM Rooms r WHERE r.roomtype = :roomtype"),
    @NamedQuery(name = "Rooms.findByBookedfrom", query = "SELECT r FROM Rooms r WHERE r.bookedfrom = :bookedfrom"),
    @NamedQuery(name = "Rooms.findByBookedtill", query = "SELECT r FROM Rooms r WHERE r.bookedtill = :bookedtill"),
    @NamedQuery(name = "Rooms.findByAvailability", query = "SELECT r FROM Rooms r WHERE r.availability = :availability"),
    @NamedQuery(name = "Rooms.findByFloor", query = "SELECT r FROM Rooms r WHERE r.floor = :floor"),
    @NamedQuery(name = "Rooms.findByBookingid", query = "SELECT r FROM Rooms r WHERE r.bookingid = :bookingid"),
    @NamedQuery(name = "Rooms.findByUsername", query = "SELECT r FROM Rooms r WHERE r.username = :username")})
public class Rooms implements Serializable {
    private static final long serialVersionUID = 1L;
    @Size(max = 25)
    @Column(name = "ROOMTYPE")
    private String roomtype;
    @Column(name = "BOOKEDFROM")
    @Temporal(TemporalType.TIMESTAMP)
    private Date bookedfrom;
    @Column(name = "BOOKEDTILL")
    @Temporal(TemporalType.TIMESTAMP)
    private Date bookedtill;
    @Size(max = 25)
    @Column(name = "AVAILABILITY")
    private String availability;
    @Size(max = 25)
    @Column(name = "FLOOR")
    private String floor;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "BOOKINGID")
    private BigDecimal bookingid;
    @Size(max = 25)
    @Column(name = "USERNAME")
    private String username;
    @JoinColumn(name = "ROOMNUMBER", referencedColumnName = "ROOMNUMBER")
    @ManyToOne
    private Displayrooms roomnumber;

    public Rooms() {
    }

    public Rooms(BigDecimal bookingid) {
        this.bookingid = bookingid;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public Date getBookedfrom() {
        return bookedfrom;
    }

    public void setBookedfrom(Date bookedfrom) {
        this.bookedfrom = bookedfrom;
    }

    public Date getBookedtill() {
        return bookedtill;
    }

    public void setBookedtill(Date bookedtill) {
        this.bookedtill = bookedtill;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public BigDecimal getBookingid() {
        return bookingid;
    }

    public void setBookingid(BigDecimal bookingid) {
        this.bookingid = bookingid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Displayrooms getRoomnumber() {
        return roomnumber;
    }

    public void setRoomnumber(Displayrooms roomnumber) {
        this.roomnumber = roomnumber;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookingid != null ? bookingid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rooms)) {
            return false;
        }
        Rooms other = (Rooms) object;
        if ((this.bookingid == null && other.bookingid != null) || (this.bookingid != null && !this.bookingid.equals(other.bookingid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return " " + bookingid;
    }
    
}
