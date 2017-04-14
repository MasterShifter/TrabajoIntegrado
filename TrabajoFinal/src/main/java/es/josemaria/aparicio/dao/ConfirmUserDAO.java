package es.josemaria.aparicio.dao;
 
public interface ConfirmUserDAO {
	
	void insertConfirmUser(String nickname, String uuid);
    
    void deleteConfirmUser(int id);
     
    Integer getIdUserByUUID(String uuid);
    
    String getuuidByidUser(int idUser);
}
