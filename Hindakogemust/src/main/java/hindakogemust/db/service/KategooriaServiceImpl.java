package hindakogemust.db.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hindakogemust.db.dao.KategooriaDAO;
import hindakogemust.db.model.Kategooria;

@Service("KategooriaService")
public class KategooriaServiceImpl implements KategooriaService{
	@Autowired
	KategooriaDAO kat_DAO;
	
    @Transactional
    public void persistKategooria(Kategooria kat) {kat_DAO.persistKategooria(kat);}
    @Transactional
    public Kategooria findKategooriaByID(int kat_id) {return kat_DAO.findKategooriaByID(kat_id);}
}