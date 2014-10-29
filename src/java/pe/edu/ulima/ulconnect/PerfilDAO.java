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

/**
 *
 * @author profw31
 */
public class PerfilDAO {
    // Singleton
    private static PerfilDAO perfilDAO = null;
    private EntityManagerFactory emf;
    private EntityManager em;
    
    public static PerfilDAO getInstance(){
        if (perfilDAO == null){
            perfilDAO = new PerfilDAO();
        }
        return perfilDAO;
    }
    
    private PerfilDAO(){
        emf = Persistence.createEntityManagerFactory("ULConnectPU");
        em = emf.createEntityManager();
    }
    
    public List<Perfil> retrieve(){
        TypedQuery<Perfil> query = 
                em.createQuery("select p from Perfil p", Perfil.class);
        return query.getResultList();
    }
    
    public Perfil get(int id){
        TypedQuery<Perfil> query = 
                em.createQuery("select p from Perfil p WHERE p.id=:cod", Perfil.class);
        query.setParameter("cod", id);
        try{
            return query.getSingleResult();
        }catch(NoResultException ex){
            return null;    
        }
    }
}
