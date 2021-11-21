package Dao;

import model.Mnct;

public class DaoMenuCT extends BaseDao<Mnct>{

	@Override
	public Class<Mnct> getmodeclass() {
		// TODO Auto-generated method stub
		return Mnct.class;
	}

	@Override
	public String getdatabase() {
		// TODO Auto-generated method stub
		return Mnct.class.getSimpleName();
	}

}
