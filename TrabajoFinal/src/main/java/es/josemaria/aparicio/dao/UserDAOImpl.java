package es.josemaria.aparicio.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import es.josemaria.aparicio.bean.User;

@Repository("userDAO")
public class UserDAOImpl extends AbstractDAO implements UserDAO {
	@Autowired
	protected SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	@Override
	public void saveUser(User u) {
		Session sesion = sessionFactory.getCurrentSession();
		sesion.persist(u);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public List<User> findAllUsers() {
		Session sesion = sessionFactory.getCurrentSession();
		return (List<User>) sesion.createQuery("from User").list();
	}
	
	@Transactional
	@Override
	public User findUserById(int id) {
		Session sesion = sessionFactory.getCurrentSession();
		return (User) sesion.createQuery("from User where idUser=:id").setParameter("id", id).uniqueResult();
	}

	@Transactional
	@Override
	public Integer checkLoginId(String login, String password) {
		Integer idUser = null;

		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
		applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();

		try {
			sesion.beginTransaction();

			idUser = (Integer) sesion
					.createSQLQuery(
							"SELECT idUser FROM user WHERE (nickname=:l OR email=:l) AND password=AES_ENCRYPT(:p, :passphrase)")
					.setParameter("l", login).setParameter("p", password).setParameter("passphrase", "Planizator123$")
					.uniqueResult();

			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}
		return idUser;
	}

	@Transactional
	@Override
	public void register(String nickname, String password, String email, Date dateCreated, String name, String surname,
			Date birthdate) {

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
		applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();
		
		try {
			sesion.beginTransaction();

			sesion.createSQLQuery("INSERT INTO user(nickname,password,email,dateCreated,name,surname,birthdate) "
					+ "VALUES(:nick,AES_ENCRYPT(:pass, :passphrase),:ema,:dat,:nam,:sur,:bir)")
					.setParameter("nick", nickname).setParameter("pass", password)
					.setParameter("passphrase", "Planizator123$").setParameter("ema", email)
					.setParameter("dat", dateCreated).setParameter("nam", name).setParameter("sur", surname)
					.setParameter("bir", df.format(birthdate)).executeUpdate();

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
	public String getPlainPass(int idUser) {
		String pass = null;

		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
		applySettings(configuration.getProperties());
		SessionFactory sesionFactory = configuration.buildSessionFactory(builder.build());
		Session sesion = sesionFactory.openSession();

		try {
			sesion.beginTransaction();

			pass = (String) sesion
					.createSQLQuery(
							"SELECT CAST(AES_DECRYPT(password, :passphrase) AS CHAR) FROM User WHERE idUser=:id")
					.setParameter("id", idUser).setParameter("passphrase", "Planizator123$").uniqueResult();

			sesion.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sesion.close();
			sesionFactory.close();
		}

		return pass;
	}

}
