package Dao;

import model.LoaiMenu;

public class Daoloaimenu extends BaseDao<LoaiMenu> {

	@Override
	public Class<LoaiMenu> getmodeclass() {
		// TODO Auto-generated method stub
		return LoaiMenu.class;
	}

	@Override
	public String getdatabase() {
		// TODO Auto-generated method stub
		return LoaiMenu.class.getSimpleName();
	}


}
