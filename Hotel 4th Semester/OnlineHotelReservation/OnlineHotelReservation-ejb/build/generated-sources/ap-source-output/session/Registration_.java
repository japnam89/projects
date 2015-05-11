package session;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-04-16T01:16:02")
@StaticMetamodel(Registration.class)
public class Registration_ { 

    public static volatile SingularAttribute<Registration, String> username;
    public static volatile SingularAttribute<Registration, BigDecimal> userid;
    public static volatile SingularAttribute<Registration, String> lastname;
    public static volatile SingularAttribute<Registration, String> usertype;
    public static volatile SingularAttribute<Registration, String> firstname;
    public static volatile SingularAttribute<Registration, String> password;

}