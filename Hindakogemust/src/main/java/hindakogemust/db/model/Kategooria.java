package hindakogemust.db.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Kategooria")
public class Kategooria {
	@Id
	@Column(name = "ID", nullable = false)
	@GeneratedValue
	private int id;
	
	@Column(name = "nimetus", nullable = false)
	private String nimetus;
	
	public int getID() {return id;}
	public String getNimetus() {return nimetus;}
}
