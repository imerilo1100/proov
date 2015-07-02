package hindakogemust.db.dao;

import hindakogemust.db.model.Kategooria;

public interface KategooriaDAO {
    public void persistKategooria(Kategooria kat);
    public Kategooria findKategooriaByID(int id);
}
