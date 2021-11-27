package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoBanDatCT;
import Dao.DaoHDCT;
import Dao.DaoHoadon;
import Dao.DaoMenu;
import Dao.DaoMenuCT;
import Dao.Dao_Staff;
import Dao.Daoloaimenu;
import Dao.Daottban;
import model.Bdct;
import model.Hdct;
import model.HoaDon;
import model.LoaiMenu;
import model.Menu;
import model.Mnct;
import model.Staff;
import model.TtBan;

@WebServlet({ "/AddMenuCTController", "/AddMenuCTController/create" })
public class AddMenuCTController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Bdct bdct;
	private DaoBanDatCT daobdct;
	private DaoMenu daomenu;
	private Menu menu;
	private Mnct mnct;
	private HoaDon hd;
	private DaoHoadon daohd;
	private DaoMenuCT daomnct;
	private Daoloaimenu daoloai;
	private LoaiMenu loai;
	private Hdct hdtc;
	private DaoHDCT daohdct;
	private Dao_Staff daostaff;
	private TtBan ttban;
	private Daottban daottb;

	public AddMenuCTController() {
		this.bdct = new Bdct();
		this.daobdct = new DaoBanDatCT();
		this.daomenu = new DaoMenu();
		this.loai = new LoaiMenu();
		this.menu = new Menu();
		this.mnct = new Mnct();
		this.bdct = new Bdct();
		this.daomnct = new DaoMenuCT();
		this.daoloai = new Daoloaimenu();
		this.hdtc = new Hdct();
		this.daohdct = new DaoHDCT();
		this.daohd = new DaoHoadon();
		this.hd = new HoaDon();
		this.daostaff = new Dao_Staff();
		this.ttban= new TtBan();
		this.daottb = new Daottban();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		this.bdct = this.daobdct.findbyid(id);
        this.ttban= this.daottb.findbyid(id);
       
		request.setAttribute("bdct", this.ttban);
		
		request.setAttribute("idbdct", id);
		request.setAttribute("idmn", menu);

		List<Menu> lstmenu = daomenu.getall();
		request.setAttribute("monan", lstmenu);

		List<LoaiMenu> lstLoai = this.daoloai.getall();
		request.setAttribute("listLoai", lstLoai);

		request.getRequestDispatcher("/views/Staff/StaffThemMon.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("create")) {
			insert(request, response);
		}

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int idmenu = Integer.parseInt(request.getParameter("idmn"));
		this.menu = daomenu.findbyid(idmenu);
		int id = Integer.parseInt(request.getParameter("id"));
		this.bdct = this.daobdct.findbyid(id);
		int sl = Integer.parseInt(request.getParameter("sl"));
		// insert menuct
		this.mnct.setBdct(bdct);
		this.mnct.setMenu(menu);
		this.mnct.setSo_luong(sl);
		this.daomnct.insert(mnct);

		// insert hodon
		this.hd.setKhachHang(bdct.getThongTinBanDat().getKhachHang());
		this.hd.setKhuyen_mai(0);
		HttpSession session = request.getSession();
		Staff staff = (Staff) session.getAttribute("acountST");
//				Staff s=this.daostaff.findbyid(1);
		this.hd.setStaff(staff);
		this.hd.setThongTinBanDat(bdct.getThongTinBanDat());
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		this.hd.setThoi_gian(date);
		this.hd.setTong_Tien(0);
		this.daohd.insert(hd);

		// insert hdct
		Mnct m = this.daomnct.findmnctbybdct(bdct);
		HoaDon h = this.daohd.findHDbyIDkh(bdct.getThongTinBanDat());
		this.hdtc.setMnct(m);
		this.hdtc.setSo_luong(0);
		this.hdtc.setThanh_Tien(0);
		this.hdtc.setHoaDon(h);
		this.daohdct.insert(hdtc);
		response.sendRedirect(
				request.getContextPath() + "/AddMenuCTController?idmn=" + idmenu + "&&id=" + id + "&& success=1 ");

	}

}