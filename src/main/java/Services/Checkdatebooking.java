package Services;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import Dao.DaoTTBD;
import model.ThongTinBanDat;

public class Checkdatebooking {
	private DaoTTBD dao;
	private List<ThongTinBanDat> lstttb;
	public Checkdatebooking() {
		this.dao=new DaoTTBD();
		this.lstttb=new ArrayList<ThongTinBanDat>();
	}
	public void checkdate() {
		this.lstttb=this.dao.getall();
		Calendar c=Calendar.getInstance();
		int day=c.get(Calendar.DATE);
		int hour=c.get(Calendar.HOUR);
		int minute=c.get(Calendar.MINUTE);
		for(ThongTinBanDat t:this.lstttb) {
			System.out.println(t.getTrang_Thai());
			if(t.getTrang_Thai().equals("Waitting line") || t.getTrang_Thai().equals("Confirmed")) {
				System.out.println(t.getGioDatBan().getHours());
				if(t.getNgayDatBan().getDate()<day) {
						System.out.println(t.getTrang_Thai());
						t.setTrang_Thai("Cancelled");
						this.dao.update(t);
				} else if(t.getNgayDatBan().getDate()==day ) {
					if(t.getGioDatBan().getHours()<hour) {
						t.setTrang_Thai("Cancelled");
						this.dao.update(t);
					}else if(t.getGioDatBan().getHours()==hour) {
						if(t.getGioDatBan().getMinutes()<minute) {
							t.setTrang_Thai("Cancelled");
							this.dao.update(t);
						}
					}
			}
		}
	}
}
}
