package Dao;

import model.BaiViet;

public class baiVietDao extends BaseDao<BaiViet>{

	

	@Override
	public String getdatabase() {
		// TODO Auto-generated method stub
		return BaiViet.class.getSimpleName();
	}

	@Override
	public Class<BaiViet> getmodeclass() {
		return BaiViet.class;
	}

}
