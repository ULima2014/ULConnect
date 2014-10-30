/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.ulima.ulconnect;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class AmistadDAO {
    private static AmistadDAO amistadDAO = null;
    private EntityManagerFactory emf;
    private EntityManager em;
    
    public static AmistadDAO getInstance(){
        if (amistadDAO == null){
            amistadDAO = new AmistadDAO();
        }
        return amistadDAO;
    }
    private AmistadDAO(){
        emf = Persistence.createEntityManagerFactory("ULConnectPU");
        em = emf.createEntityManager();
    }
    public List<Amistad> retrieve(){
        TypedQuery<Amistad> query = 
                em.createQuery("select a from Amistad a", Amistad.class);
        return query.getResultList();
    }
    
    public Amistad get(int id){
        TypedQuery<Amistad> query = 
                em.createQuery("select p from Amistad p WHERE p.id=:cod", Amistad.class);
        query.setParameter("cod", id);
        try{
            return query.getSingleResult();
        }catch(NoResultException ex){
            return null;    
        }
    }
}
