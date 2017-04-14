package es.josemaria.aparicio.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
 
@Repository("confirmUserDAO")
public class ConfirmUserDAOImpl extends AbstractDAO implements ConfirmUserDAO{
	
	@Transactional
	@Override
	public void insertConfirmUser(String nickname, String uuid) {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();
		try {
			sesion.beginTransaction();
			sesion.createSQLQuery("INSERT INTO confirmuser(idUser, uuid) "
					+ "VALUES((SELECT idUser FROM user WHERE nickname=:nick), :uuid)")
					.setParameter("nick", nickname).setParameter("uuid", uuid).executeUpdate();
			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}
	}
	
	@Transactional
	@Override
	public void deleteConfirmUser(int idUser) {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();
		try {
			sesion.beginTransaction();
			sesion.createSQLQuery("DELETE FROM confirmuser WHERE idUser=:idUser")
					.setParameter("idUser", idUser).executeUpdate();
			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}
	}

	@Override
	public Integer getIdUserByUUID(String uuid) {
		Integer resultado = null;
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();
		try {
			sesion.beginTransaction();
			resultado = (Integer)sesion.createSQLQuery("SELECT idUser FROM confirmuser WHERE uuid=:uuid")
					.setParameter("uuid", uuid).uniqueResult();
			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}
		return resultado;
	}

	@Override
	public String getuuidByidUser(int idUser) {
		String resultado = new String();
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();
		try {
			sesion.beginTransaction();
			resultado = (String)sesion.createSQLQuery("SELECT uuid FROM confirmuser WHERE idUser=:idUser")
					.setParameter("idUser", idUser).uniqueResult();
			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}
		return resultado;
	}
	


}
