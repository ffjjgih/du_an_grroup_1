package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoBanDatCT;
import Dao.DaoMenuCT;
import Dao.DaoTTBD;
import Dao.DaottBan;
import model.Bdct;
import model.Mnct;
import model.ThongTinBanDat;
import model.TtBan;

@WebServlet({ "/MNCTBandatController","MNCTBandatController/create" })
public class MNCTBandatController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoTTBD daottbd;
	private DaoBanDatCT daobdct;
	private List<Bdct> lstbdct;
	private List<ThongTinBanDat> lstttbd;
	Bdct bdct;
	ThongTinBanDat ttbd;
	TtBan ttban;
	private DaottBan daottb;
	private Mnct menuct;
	private List<Mnct> lstmenuct;
	private DaoMenuCT daomenuct;

	public MNCTBandatController() {
		bdct = new Bdct();
		ttbd = new ThongTinBanDat();
		daottbd = new DaoTTBD();
		daobdct = new DaoBanDatCT();
		ttban = new TtBan();
		daottb = new DaottBan();
		menuct = new Mnct();
		lstmenuct = new ArrayList<Mnct>();
		daomenuct = new DaoMenuCT();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		ttban = this.daottb.findbyid(id);
		lstbdct = this.daobdct.findTTban(ttban);
		request.setAttribute("items", ttban);
		
		lstmenuct = daomenuct.getall();
		request.setAttribute("listMenuCT", lstmenuct);
		
		

		request.getRequestDispatcher("/views/Staff/MenuChiTietBan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURL().toString();
		System.out.println(url);
		if (url.contains("create")) {
			int id = bdct.getIdBdct();
			response.sendRedirect(request.getContextPath() + "/ThemThucDonStaff?id="+id);
			System.out.println("insert");
		}
		
		doGet(request, response);
	}

}
