/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.ulima.ulconnect;

import java.util.ArrayList;
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
public class UsuarioDAO {
     // Singleton
    private static UsuarioDAO usuarioDAO = null;
    private EntityManagerFactory emf;
    private EntityManager em;
    
    public static UsuarioDAO getInstance(){
        if (usuarioDAO == null){
            usuarioDAO = new UsuarioDAO();
        }
        return usuarioDAO;
    }
    
    private UsuarioDAO(){
        emf = Persistence.createEntityManagerFactory("ULConnectPU");
        em = emf.createEntityManager();
    }
    
    public void create(Usuario usuario){
        em.getTransaction().begin();
        em.persist(usuario);
        em.getTransaction().commit();
    }
    
    public Usuario get(String codigo, String password){
        TypedQuery<Usuario> query = 
                em.createQuery("select u from Usuario u "
                        + " WHERE u.codigo=:cod AND u.password=:password", 
                        Usuario.class);
        query.setParameter("cod", codigo);
        query.setParameter("password", password);
        try{
            return query.getSingleResult();
        }catch(NoResultException ex){
            return null;    
        }
    }
    public void update(Usuario usuario){
        Usuario usuarioAModificar = get(usuario.getId());
        usuarioAModificar.setNombre(usuario.getNombre());
        usuarioAModificar.setPassword(usuario.getPassword());
        usuarioAModificar.setPerfilId(usuario.getPerfilId());
        
        em.getTransaction().begin();
        em.merge(usuarioAModificar);
        em.getTransaction().commit();
    }
    public Usuario get(int id){
        TypedQuery<Usuario> query =
                em.createQuery("SELECT u from Usuario u WHERE u.id=:id", Usuario.class);
        
        query.setParameter("id", id);
        
        return query.getSingleResult();
    }
    public List<Usuario> recuperarAmigos(Usuario a){
        List<Amistad> amistad = AmistadDAO.getInstance().amistad(a);
        List<Usuario> lista=new ArrayList<>();
        for(Amistad element : amistad){
            Usuario u = get(element.getAmigoO().getId());
            lista.add(u);
        }
        return lista;
    }
    
    public Usuario datosAmigo(String codigo){
        TypedQuery<Usuario> query = 
                em.createQuery("select u from Usuario u "
                        + " WHERE u.codigo=:cod", 
                        Usuario.class);
        query.setParameter("cod", codigo);
        try{
            return query.getSingleResult();
        }catch(NoResultException ex){
            return null;    
        }
    }
    
}
