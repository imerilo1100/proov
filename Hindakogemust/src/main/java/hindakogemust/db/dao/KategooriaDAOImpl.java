package hindakogemust.db.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hindakogemust.db.model.Kategooria; 

@Repository("KategooriaDAO")
public class KategooriaDAOImpl implements KategooriaDAO {	
	@Autowired
	private SessionFactory sessionFactory;
	
    public void persistKategooria(Kategooria kat) {
    	sessionFactory.getCurrentSession().persist(kat);
    } 

    public Kategooria findKategooriaByID(int id) {
    	return (Kategooria) sessionFactory.getCurrentSession().get(Kategooria.class, id);
    }
    
}