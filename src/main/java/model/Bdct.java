package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the bdct database table.
 * 
 */
@Entity
@NamedQuery(name="Bdct.findAll", query="SELECT b FROM Bdct b")
public class Bdct implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_BDCT")
	private int idBdct;

	//bi-directional many-to-one association to ThongTinBanDat
	@ManyToOne
	@JoinColumn(name="ID_BD")
	private ThongTinBanDat thongTinBanDat;

	//bi-directional many-to-one association to TtBan
	@ManyToOne
	@JoinColumn(name="IDBan")
	private TtBan ttBan;

	//bi-directional many-to-one association to Mnct
	@OneToMany(mappedBy="bdct")
	private List<Mnct> mncts;

	public Bdct() {
	}

	public int getIdBdct() {
		return this.idBdct;
	}

	public void setIdBdct(int idBdct) {
		this.idBdct = idBdct;
	}

	public ThongTinBanDat getThongTinBanDat() {
		return this.thongTinBanDat;
	}

	public void setThongTinBanDat(ThongTinBanDat thongTinBanDat) {
		this.thongTinBanDat = thongTinBanDat;
	}

	public TtBan getTtBan() {
		return this.ttBan;
	}

	public void setTtBan(TtBan ttBan) {
		this.ttBan = ttBan;
	}

	public List<Mnct> getMncts() {
		return this.mncts;
	}

	public void setMncts(List<Mnct> mncts) {
		this.mncts = mncts;
	}

	public Mnct addMnct(Mnct mnct) {
		getMncts().add(mnct);
		mnct.setBdct(this);

		return mnct;
	}

	public Mnct removeMnct(Mnct mnct) {
		getMncts().remove(mnct);
		mnct.setBdct(null);

		return mnct;
	}

	@Override
	public String toString() {
		return "Bdct [idBdct=" + idBdct + ", thongTinBanDat=" + thongTinBanDat + ", ttBan=" + ttBan + ", mncts=" + mncts
				+ "]";
	}
	

}