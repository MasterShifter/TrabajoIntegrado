package es.josemaria.aparicio.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.josemaria.aparicio.bean.Event;
 
@Repository("eventDAO")
public class EventDAOImpl extends AbstractDAO implements EventDAO{
	@Autowired
    protected SessionFactory sessionFactory;
    
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
		
	@Transactional
	@Override
    public void saveEvent(Event e) {
    	Session sesion = sessionFactory.getCurrentSession();
        sesion.persist(e);
    }
 
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
    public List<Event> findAllEvents() {
		Session sesion = sessionFactory.getCurrentSession();
		return (List<Event>)sesion.createQuery("from Event").list();
    }
	
	@Transactional
	public byte[] getPhotoById(int idEvent) {
		byte[] imagen = null;

		Session sesion = sessionFactory.getCurrentSession();

		try {
			sesion.beginTransaction();

			imagen = (byte[]) sesion.createQuery("Select photo From Event Where idEvent=:id")
					.setParameter("id", idEvent).uniqueResult();

			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sessionFactory.close();
		}
		return imagen;
	}

}
