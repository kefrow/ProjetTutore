package data;
// Generated 26 avr. 2015 15:44:25 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Sp generated by hbm2java
 */
public class Sp  implements java.io.Serializable {


     private Integer id;
     private Set srs = new HashSet(0);

    public Sp() {
    }

    public Sp(Set srs) {
       this.srs = srs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Set getSrs() {
        return this.srs;
    }
    
    public void setSrs(Set srs) {
        this.srs = srs;
    }




}


