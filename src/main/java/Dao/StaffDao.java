package Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import model.Staff;
import utils.Connectjpa;

public class StaffDao extends BaseDao<Staff> {

	private Staff staff;
	private Connectjpa conn;
	private EntityManager manager;
	private EntityTransaction transaction;

	public StaffDao() {
		this.staff = new Staff();
		this.conn = new Connectjpa();
	}

	public void changepassstaff(int id, String xacnhan_pass) {
		this.manager = this.conn.getEntityManager();
		this.transaction = this.manager.getTransaction();
		try {
			this.transaction.begin();
			String hql = "Update Staff s SET password=:xacnhan_pass WHERE idnv=:id";
			Query query = this.manager.createQuery(hql);
			query.setParameter("xacnhan_pass", xacnhan_pass);
			query.setParameter("id", id);
			query.executeUpdate();
			this.transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateprofilestaff(Staff staff) {
		this.manager = this.conn.getEntityManager();
		this.transaction = this.manager.getTransaction();
		try {
			this.transaction.begin();
			String hql = "Update Staff s SET img=:img , hoTen=:name , sdt=:phone , email=:email WHERE idnv=:id_nv";
			Query query = this.manager.createQuery(hql);
			query.setParameter("img", staff.getImg());
			query.setParameter("name", staff.getHoTen());
			query.setParameter("phone", staff.getSdt());
			query.setParameter("email", staff.getEmail());
			query.setParameter("id_nv", staff.getIdnv());
			query.executeUpdate();
			this.transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public Class<Staff> getmodeclass() {
		// TODO Auto-generated method stub
		return Staff.class;
	}

	@Override
	public String getdatabase() {
		// TODO Auto-generated method stub
		return Staff.class.getSimpleName();
	}

}
