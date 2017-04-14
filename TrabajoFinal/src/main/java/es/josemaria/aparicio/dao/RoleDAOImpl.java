package es.josemaria.aparicio.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.josemaria.aparicio.bean.Role;
 
@Repository("roleDAO")
public class RoleDAOImpl extends AbstractDAO implements RoleDAO{
	@Autowired
    protected SessionFactory sessionFactory;
    
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
    public void saveRole(Role r) {
    	Session sesion = sessionFactory.getCurrentSession();
        sesion.persist(r);
    }
 
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
    public List<Role> findAllRoles() {
		Session sesion = sessionFactory.getCurrentSession();
		return (List<Role>)sesion.createQuery("from Role").list();
    }

}
