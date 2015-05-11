/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author aashishvig
 */
@Entity
@Table(name = "DISPLAYROOMS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Displayrooms.findAll", query = "SELECT d FROM Displayrooms d"),
    @NamedQuery(name = "Displayrooms.findByFloor", query = "SELECT d FROM Displayrooms d WHERE d.floor = :floor"),
    @NamedQuery(name = "Displayrooms.findByRoomtype", query = "SELECT d FROM Displayrooms d WHERE d.roomtype = :roomtype"),
    @NamedQuery(name = "Displayrooms.findByAvailability", query = "SELECT d FROM Displayrooms d WHERE d.availability = :availability"),
    @NamedQuery(name = "Displayrooms.findByPrice", query = "SELECT d FROM Displayrooms d WHERE d.price = :price"),
    @NamedQuery(name = "Displayrooms.findByRoomnumber", query = "SELECT d FROM Displayrooms d WHERE d.roomnumber = :roomnumber")})
public class Displayrooms implements Serializable {
    private static final long serialVersionUID = 1L;
    @Size(max = 25)
    @Column(name = "FLOOR")
    private String floor;
    @Size(max = 25)
    @Column(name = "ROOMTYPE")
    private String roomtype;
    @Size(max = 25)
    @Column(name = "AVAILABILITY")
    private String availability;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PRICE")
    private Double price;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ROOMNUMBER")
    private BigDecimal roomnumber;
    @OneToMany(mappedBy = "roomnumber")
    private Collection<Rooms> roomsCollection;

    public Displayrooms() {
    }

    public Displayrooms(BigDecimal roomnumber) {
        this.roomnumber = roomnumber;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public BigDecimal getRoomnumber() {
        return roomnumber;
    }

    public void setRoomnumber(BigDecimal roomnumber) {
        this.roomnumber = roomnumber;
    }

    @XmlTransient
    public Collection<Rooms> getRoomsCollection() {
        return roomsCollection;
    }

    public void setRoomsCollection(Collection<Rooms> roomsCollection) {
        this.roomsCollection = roomsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (roomnumber != null ? roomnumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Displayrooms)) {
            return false;
        }
        Displayrooms other = (Displayrooms) object;
        if ((this.roomnumber == null && other.roomnumber != null) || (this.roomnumber != null && !this.roomnumber.equals(other.roomnumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return " " + roomnumber ;
    }
    
}
