package hindakogemust.db.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Asutus")
public class Asutus {
	@Id
	@Column(name = "ID", nullable = false)
	@GeneratedValue
	private int id;
	
	@Column(name = "kategooria_ID", nullable = false)
	private int kat_id;
	
	@Column(name = "nimi", nullable = false)
	private String nimi;
	
	@Column(name = "asukoht", nullable = false)
	private String asukoht;
	
	public int getID() {return id;}
	public int getKatID() {return kat_id;}
	public String getNimi() {return nimi;}
	public String getAsukoht() {return asukoht;}
}