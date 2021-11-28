package Dao;

import model.Bdct;

public class DaoBDCT extends BaseDao<Bdct>{

	@Override
	public Class<Bdct> getmodeclass() {
		return Bdct.class;
	}

	@Override
	public String getdatabase() {
		return Bdct.class.getSimpleName();
	}

}
