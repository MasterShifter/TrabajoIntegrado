package es.josemaria.aparicio.dao;

import java.util.Date;
import java.util.List;

import es.josemaria.aparicio.bean.User;
 
public interface UserDAO {
 
	public void saveUser(User u);
     
    public List<User> findAllUsers();
    
    public Integer checkLoginId(String login, String password);
	
    public User findUserById(int id);
	
	public void register(String nickname, String password, String email, Date dateCreated, String name, String surname, Date birthdate) ;
	
	public String getPlainPass(int idUser);
}
