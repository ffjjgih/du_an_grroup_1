package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Bdct;
import model.LoaiMenu;
import model.Menu;
import model.ThongTinBanDat;
import utils.Connectjpa;

public class DaoMenu extends BaseDao<Menu>{
	
	private LoaiMenu loaimenu;
	private Connectjpa conn;
	private EntityManager manager;
	private EntityTransaction transaction;
	private List<Menu> lstmenu;
	public DaoMenu() {
		loaimenu=new LoaiMenu();
		conn= new Connectjpa();
	}
	
	@Override
	public Class<Menu> getmodeclass() {
		return Menu.class;
	}

	@Override
	public String getdatabase() {
		return Menu.class.getSimpleName();
	}
	
	//tìm kiếm tên món 
	public List<Menu> findName(String name){
		try {
			this.manager=this.conn.getEntityManager();
			String hql="SELECT h FROM Menu h WHERE h.ten_Mon_An like :ten";
			TypedQuery<Menu> query=manager.createQuery(hql,Menu.class);
			query.setParameter("ten", "%" + name + "%");
			this.lstmenu=query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return lstmenu;
		
	}
	public List<Menu> findTTBD(LoaiMenu loai){
		try {
			this.manager=this.conn.getEntityManager();
			String hql="SELECT h FROM Menu h WHERE loaiMenu =:id";
			TypedQuery<Menu> query=manager.createQuery(hql,Menu.class);
			query.setParameter("id", loai);
			this.lstmenu=query.getResultList();
					
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return this.lstmenu;
	}
	

}
