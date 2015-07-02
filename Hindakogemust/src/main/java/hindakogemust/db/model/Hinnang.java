package hindakogemust.db.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Hinnang")
public class Hinnang {
	@Id
	@Column(name = "ID", nullable = false)
	@GeneratedValue
	private int id;
	
	@Column(name = "asutuse_ID", nullable = false)
	private int asutuse_id;
	
	@Column(name = "hindaja_nimi", nullable = false)
	private String h_nimi;
	
	@Column(name = "kommentaar", nullable = false)
	private String kommentaar;
	
	@Column(name = "hinne", nullable = false)
	private double hinne;
	
	public int getID() {return id;}
	public int getAID() {return asutuse_id;}
	public String getHNimi() {return h_nimi;}
	public String getKommentaar() {return h_nimi;}
	public double getHinne() {return hinne;}
}