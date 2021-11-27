package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Menu;
import model.TtBan;
import utils.Connectjpa;

public class DaottBan extends BaseDao<TtBan>{
	private Connectjpa conn;
	private EntityManager manager;
	private EntityTransaction transaction;
	private List<TtBan> lst;
	public Class<TtBan> getmodeclass() {
		
		return TtBan.class;
	}
	public DaottBan() {
		conn= new Connectjpa();
	}

	@Override
	public String getdatabase() {
		return TtBan.class.getSimpleName();
	}
	public List<TtBan> findName(int name){
		try {
			this.manager=this.conn.getEntityManager();
			String hql="SELECT h FROM TtBan h WHERE h.IDBan = :id";
			TypedQuery<TtBan> query=manager.createQuery(hql,TtBan.class);
			query.setParameter("id", name );
			this.lst=query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return lst;
		
	}


}
