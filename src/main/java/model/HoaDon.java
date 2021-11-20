package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the Hoa_Don database table.
 * 
 */
@Entity
@Table(name="Hoa_Don")
@NamedQuery(name="HoaDon.findAll", query="SELECT h FROM HoaDon h")
public class HoaDon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="IDHD")
	private int idhd;

	@Column(name="Khuyen_mai")
	private float khuyen_mai;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="Thoi_gian")
	private Date thoi_gian;

	@Column(name="Tong_Tien")
	private float tong_Tien;

	//bi-directional many-to-one association to Hdct
	@OneToMany(mappedBy="hoaDon")
	private List<Hdct> hdcts;

	//bi-directional many-to-one association to KhachHang
	@ManyToOne
	@JoinColumn(name="IDKH")
	private KhachHang khachHang;

	//bi-directional many-to-one association to Staff
	@ManyToOne
	@JoinColumn(name="IDNV")
	private Staff staff;

	//bi-directional many-to-one association to ThongTinBanDat
	@ManyToOne
	@JoinColumn(name="ID_BD")
	private ThongTinBanDat thongTinBanDat;

	public HoaDon() {
	}

	public int getIdhd() {
		return this.idhd;
	}

	public void setIdhd(int idhd) {
		this.idhd = idhd;
	}

	public float getKhuyen_mai() {
		return this.khuyen_mai;
	}

	public void setKhuyen_mai(float khuyen_mai) {
		this.khuyen_mai = khuyen_mai;
	}

	public Date getThoi_gian() {
		return this.thoi_gian;
	}

	public void setThoi_gian(Date thoi_gian) {
		this.thoi_gian = thoi_gian;
	}

	public float getTong_Tien() {
		return this.tong_Tien;
	}

	public void setTong_Tien(float tong_Tien) {
		this.tong_Tien = tong_Tien;
	}

	public List<Hdct> getHdcts() {
		return this.hdcts;
	}

	public void setHdcts(List<Hdct> hdcts) {
		this.hdcts = hdcts;
	}

	public Hdct addHdct(Hdct hdct) {
		getHdcts().add(hdct);
		hdct.setHoaDon(this);

		return hdct;
	}

	public Hdct removeHdct(Hdct hdct) {
		getHdcts().remove(hdct);
		hdct.setHoaDon(null);

		return hdct;
	}

	public KhachHang getKhachHang() {
		return this.khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Staff getStaff() {
		return this.staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public ThongTinBanDat getThongTinBanDat() {
		return this.thongTinBanDat;
	}

	public void setThongTinBanDat(ThongTinBanDat thongTinBanDat) {
		this.thongTinBanDat = thongTinBanDat;
	}

}