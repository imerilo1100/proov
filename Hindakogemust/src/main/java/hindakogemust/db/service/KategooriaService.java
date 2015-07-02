package hindakogemust.db.service;

import hindakogemust.db.model.Kategooria;

public interface KategooriaService {
    public void persistKategooria(Kategooria kat);
    public Kategooria findKategooriaByID(int id);
}
