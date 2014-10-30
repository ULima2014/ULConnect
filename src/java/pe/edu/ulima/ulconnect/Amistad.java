/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.ulima.ulconnect;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author B
 */
@Entity
@Table(name = "amistad")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Amistad.findAll", query = "SELECT a FROM Amistad a"),
    @NamedQuery(name = "Amistad.findById", query = "SELECT a FROM Amistad a WHERE a.id = :id")})
public class Amistad implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "amigoP", referencedColumnName = "id")
    @ManyToOne
    private Usuario amigoP;
    @JoinColumn(name = "amigoO", referencedColumnName = "id")
    @ManyToOne
    private Usuario amigoO;

    public Amistad() {
    }

    public Amistad(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Usuario getAmigoP() {
        return amigoP;
    }

    public void setAmigoP(Usuario amigoP) {
        this.amigoP = amigoP;
    }

    public Usuario getAmigoO() {
        return amigoO;
    }

    public void setAmigoO(Usuario amigoO) {
        this.amigoO = amigoO;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Amistad)) {
            return false;
        }
        Amistad other = (Amistad) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "pe.edu.ulima.ulconnect.Amistad[ id=" + id + " ]";
    }
    
}
