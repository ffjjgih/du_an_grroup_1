package Dao;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import model.Staff;
import utils.Connectjpa;

public class Dao_Staff extends BaseDao<Staff> {
	private Connectjpa conn;
	private EntityManager manager;
	private Staff st;

	public Dao_Staff() {
		this.conn = new Connectjpa();
		this.st = new Staff();

	}

	@Override
	public Class<Staff> getmodeclass() {
		return Staff.class;
	}

	@Override
	public String getdatabase() {
		return Staff.class.getSimpleName();
	}

	public Staff login(String username, String password) {
		try {
			this.manager = this.conn.getEntityManager();
			String sql = "SELECT s FROM Staff s WHERE username = :userName AND password = :ps ";
			TypedQuery<Staff> query = manager.createQuery(sql, Staff.class);
			query.setParameter("userName", username);
			query.setParameter("ps", password);
			this.st = query.getResultList().get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return st;
	}

}
