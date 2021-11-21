package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.TtBan;
import utils.Connectjpa;

public class DaottBan extends BaseDao<TtBan>{

	@Override
	public Class<TtBan> getmodeclass() {
		// TODO Auto-generated method stub
		return TtBan.class;
	}

	@Override
	public String getdatabase() {
		return TtBan.class.getSimpleName();
	}


}
