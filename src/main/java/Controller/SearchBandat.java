package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoBanDatCT;
import Dao.DaoHoadon;
import Dao.Daottban;
import Dao.NhanVienDao;
import Dao.baiVietDao;
import model.BaiViet;
import model.Bdct;
import model.HoaDon;
import model.Staff;
import model.TtBan;

/**
 * Servlet implementation class SearchBaiVietController
 */
@WebServlet({"/BanDat","/BanDat/xacnhan"})
import model.Staff;
import model.TtBan;

public class SearchBandat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Daottban dao;
	private TtBan tt;
	private NhanVienDao daonv;
	private Bdct bdct;
	private Staff f;
	private List<Bdct> lstbdct;
	private DaoBanDatCT daobdct;
    private DaoHoadon daohd;
	private List<TtBan> lst;
	private HoaDon hd;
	private DaoBanDatCT dao_BanDatCT;
	private List<Bdct> list_Bdct ;


	public SearchBandat() {
		this.dao = new Daottban();
		this.daonv = new NhanVienDao();
		this.tt = new TtBan();
		this.lst = new ArrayList<TtBan>();
		this.bdct = new Bdct();
		this.dao_BanDatCT = new DaoBanDatCT();
		this.list_Bdct = new ArrayList<Bdct>();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		int idSearch = Integer.parseInt(request.getParameter("txt"));
		this.tt = this.dao.findbyid(idSearch);
		this.bdct = this.dao_BanDatCT.findBdct(tt);
		if(this.bdct == null) {
			response.sendRedirect(request.getContextPath() + "/QuanLiMenuController?error=1" );
		}else {	
			response.sendRedirect(request.getContextPath() + "/menuCTController?id=" +this.bdct.getIdBdct());
		}
	}

}
