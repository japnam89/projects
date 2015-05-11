package session;

import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import session.Displayrooms;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-04-16T01:16:02")
@StaticMetamodel(Rooms.class)
public class Rooms_ { 

    public static volatile SingularAttribute<Rooms, String> username;
    public static volatile SingularAttribute<Rooms, String> floor;
    public static volatile SingularAttribute<Rooms, String> roomtype;
    public static volatile SingularAttribute<Rooms, Date> bookedfrom;
    public static volatile SingularAttribute<Rooms, Date> bookedtill;
    public static volatile SingularAttribute<Rooms, Displayrooms> roomnumber;
    public static volatile SingularAttribute<Rooms, String> availability;
    public static volatile SingularAttribute<Rooms, BigDecimal> bookingid;

}