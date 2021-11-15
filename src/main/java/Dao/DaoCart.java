package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import model.GioHang;
import model.ThongTinBanDat;
import utils.Connectjpa;

public class DaoCart extends BaseDao<GioHang>{

	private Connectjpa conn;
	private EntityManager manager;
	private List<GioHang> lstgh;
	public DaoCart() {
		this.conn=new Connectjpa();
		this.lstgh=new ArrayList<GioHang>();
	}
	@Override
	public Class<GioHang> getmodeclass() {
		return GioHang.class;
	}

	@Override
	public String getdatabase() {
		return GioHang.class.getSimpleName();
	}

	public List<GioHang> FindCartbyIDDB(ThongTinBanDat t){
		String hql="SELECT g FROM GioHang g WHERE thongTinBanDat=:tt_bd";
		this.manager=this.conn.getEntityManager();
		try {
			TypedQuery<GioHang> query=this.manager.createQuery(hql,GioHang.class);
			query.setParameter("tt_bd", t);
			this.lstgh=query.getResultList();
			return this.lstgh;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
