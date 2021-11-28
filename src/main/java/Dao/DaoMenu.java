package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Menu;
import utils.Connectjpa;

public class DaoMenu extends BaseDao<Menu>{
	private Connectjpa conn;
	private EntityManager manager;
	private List<Menu> lstMenu;
	
	public DaoMenu() {
		this.conn = new Connectjpa();
		this.lstMenu = new ArrayList<Menu>();
	}
	
	public List<Menu> tkMaMon(){
		this.manager = this.conn.getEntityManager();
		String hql = "SELECT m FROM Menu m";
		Query query = this.manager.createQuery(hql);
		return this.lstMenu = query.getResultList();
	}
	
	@Override
	public Class<Menu> getmodeclass() {
		return Menu.class;
	}

	@Override
	public String getdatabase() {
		return Menu.class.getSimpleName();
	}

}
