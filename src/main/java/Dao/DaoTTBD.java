package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
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
}
