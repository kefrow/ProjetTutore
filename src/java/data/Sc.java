package data;
// Generated 26 avr. 2015 15:44:25 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Sc generated by hbm2java
 */
public class Sc  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set srs = new HashSet(0);

    public Sc() {
    }

    public Sc(String name, Set srs) {
       this.name = name;
       this.srs = srs;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getSrs() {
        return this.srs;
    }
    
    public void setSrs(Set srs) {
        this.srs = srs;
    }




}


