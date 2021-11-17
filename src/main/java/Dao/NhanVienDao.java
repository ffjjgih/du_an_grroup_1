package Dao;

import model.Staff;

public class NhanVienDao extends BaseDao<Staff>{

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
