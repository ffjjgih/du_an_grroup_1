package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import model.Bdct;
import model.ThongTinBanDat;
import model.TtBan;
import utils.Connectjpa;

public class DaoBanDatCT extends BaseDao<Bdct>{
private Connectjpa conn;
private EntityManager manager;
private EntityTransaction transaction;
private List<Bdct> lst;
	public DaoBanDatCT() {
     this.conn=new Connectjpa();
	}
	public List<Bdct> findTTBD(ThongTinBanDat ttbd){
		try {
				this.manager=this.conn.getEntityManager();
					String hql="SELECT h FROM Bdct h WHERE thongTinBanDat =:sl";
					TypedQuery<Bdct> query=manager.createQuery(hql,Bdct.class);
					query.setParameter("sl", ttbd);
					this.lst=query.getResultList();
					
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return lst;
	}
	public int count(){
		this.manager=this.conn.getEntityManager();
		String qery="select count(u) from Bdct u ";
		Query sql=  manager.createQuery(qery);
		return ((Long)sql.getSingleResult()).intValue();
	}
	public List<Bdct> findTTban(TtBan ttb){
		try {
				this.manager=this.conn.getEntityManager();
					String hql="SELECT h FROM Bdct h WHERE ttBan =:id_ban";
					TypedQuery<Bdct> query=manager.createQuery(hql,Bdct.class);
					query.setParameter("id_ban", ttb);
					this.lst=query.getResultList();
					
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return lst;
	}
	@Override
	public Class<Bdct> getmodeclass() {
		
		return Bdct.class;
	}

	@Override
	public String getdatabase() {
		// TODO Auto-generated method stub
		return Bdct.class.getSimpleName();
	}

}
