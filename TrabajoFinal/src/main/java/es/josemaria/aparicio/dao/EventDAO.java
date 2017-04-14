package es.josemaria.aparicio.dao;

import java.util.List;

import es.josemaria.aparicio.bean.Event;
 
public interface EventDAO {
 
    void saveEvent(Event e);
     
    List<Event> findAllEvents();
    
    public byte[] getPhotoById(int idEvent);
}
