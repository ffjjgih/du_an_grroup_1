package Dao;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import model.KhachHang;
import model.ThongTinBanDat;
import utils.Connectjpa;

public class DaoTTBD extends BaseDao<ThongTinBanDat>{
	private ThongTinBanDat ttbd;
	private List<ThongTinBanDat> lstttbd;
	private Connectjpa conn;
	private EntityManager manager;
	private EntityTransaction transaction;
	public DaoTTBD() {
		this.ttbd=new ThongTinBanDat();
		this.lstttbd=new ArrayList<ThongTinBanDat>();
		this.conn=new Connectjpa();
	}
	@Override
	public Class<ThongTinBanDat> getmodeclass() {
		return ThongTinBanDat.class;
	}

	@Override
	public String getdatabase() {
		return ThongTinBanDat.class.getSimpleName();
	}
	
	public List<ThongTinBanDat> findTTBDbyIDkh(KhachHang kh){
		String hql="Select t From ThongTinBanDat t Where khachHang=:id_kh ORDER BY idBd desc";
		this.manager=this.conn.getEntityManager();
		TypedQuery<ThongTinBanDat> query=this.manager.createQuery(hql, ThongTinBanDat.class);
		query.setParameter("id_kh", kh);
		this.lstttbd=query.getResultList();
		return this.lstttbd;
	}
	
	public ThongTinBanDat findttbdbystatus(KhachHang kh){
		try {
			String hql="Select t From ThongTinBanDat t Where khachHang=:id_kh and trang_Thai=:status or trang_Thai=:tt";
			this.manager=this.conn.getEntityManager();
			TypedQuery<ThongTinBanDat> query=this.manager.createQuery(hql, ThongTinBanDat.class);
			query.setParameter("id_kh", kh);
			query.setParameter("status", "waitting line");
			query.setParameter("tt", "comfirmed");
			this.ttbd=query.getSingleResult();
			return this.ttbd;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void Updatelichdat(Date ngay,Time giodat,String note,int so_luong,int id) {
		this.manager=this.conn.getEntityManager();
		this.transaction=this.manager.getTransaction();
		try {
			
			this.manager.getTransaction().begin();
			manager.flush(); manager.clear();
			String hql="Update ThongTinBanDat t SET ngayDatBan=:ngay, gioDatBan=:gio, so_Luong_Nguoi=:soluong, ghi_Chu=:note WHERE idBd=:index";
		
			Query query=this.manager.createQuery(hql);
			query.setParameter("ngay", ngay);
			query.setParameter("gio", giodat);
			query.setParameter("note", note);
			query.setParameter("soluong", so_luong);
			query.setParameter("index", id);
			query.executeUpdate();
			this.transaction.commit();
		}catch (Exception e) {
			e.printStackTrace();
			this.transaction.rollback();
		}
	
}
}
