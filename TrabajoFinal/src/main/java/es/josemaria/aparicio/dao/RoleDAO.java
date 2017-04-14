package es.josemaria.aparicio.dao;

import java.util.List;

import es.josemaria.aparicio.bean.Role;
 
public interface RoleDAO {
 
    void saveRole(Role r);
     
    List<Role> findAllRoles();
}
