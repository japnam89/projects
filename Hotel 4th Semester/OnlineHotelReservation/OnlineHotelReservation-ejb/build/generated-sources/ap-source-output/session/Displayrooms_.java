package session;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import session.Rooms;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-04-16T01:16:02")
@StaticMetamodel(Displayrooms.class)
public class Displayrooms_ { 

    public static volatile SingularAttribute<Displayrooms, Double> price;
    public static volatile SingularAttribute<Displayrooms, String> floor;
    public static volatile SingularAttribute<Displayrooms, String> roomtype;
    public static volatile SingularAttribute<Displayrooms, BigDecimal> roomnumber;
    public static volatile SingularAttribute<Displayrooms, String> availability;
    public static volatile CollectionAttribute<Displayrooms, Rooms> roomsCollection;

}