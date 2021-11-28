package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoBanDatCT;
import Dao.DaoHDCT;
import Dao.DaoMenuCT;
import Dao.DaoTTBD;
import Dao.Daottban;
import model.Bdct;
import model.Hdct;
import model.Mnct;
import model.ThongTinBanDat;
import model.TtBan;

/**
 * Servlet implementation class menuCTController
 */
@WebServlet({ "/menuCTController", "/menuCTController/create" })
public class menuCTController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoTTBD daottbd;
	private DaoBanDatCT daobdct;
	private List<Bdct> lstbdct;
	private List<ThongTinBanDat> lstttbd;
	private Bdct bdct;
	private ThongTinBanDat ttbd;
	private TtBan ttban;
	private Daottban daottb;
	private Mnct menuct;
	private List<Mnct> lstmenuct;
	private DaoMenuCT daomenuct;
	private DaoHDCT daohdct;
	private List<Hdct> lstHDCT;
	

	public menuCTController() {
		this.ttban = new TtBan();
		this.daottb = new Daottban();
		this.daobdct = new DaoBanDatCT();
		this.daomenuct = new DaoMenuCT();
		this.daohdct = new DaoHDCT();
		this.menuct= new Mnct();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idbdct = Integer.parseInt(request.getParameter("id"));
		int hd=Integer.parseInt(request.getParameter("idhd"));
		
		bdct=this.daobdct.findbyid(idbdct);
		lstmenuct = daomenuct.findTTban(bdct);
		request.setAttribute("listMNCT", lstmenuct);
		System.out.print("abcd:"+bdct.getIdBdct());
		request.setAttribute("idhd", hd);
		
		menuct= daomenuct.findbyid(idbdct);
		lstHDCT= daohdct.getall();
		request.setAttribute("listHDCT", lstHDCT);		
		
		request.setAttribute("bd", bdct);
		
		request.getRequestDispatcher("/views/Staff/MenuChiTietBan.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = request.getRequestURL().toString();
		
		if (url.contains("create")) {
			
			int index = Integer.parseInt(request.getParameter("id"));
			int idhd=	Integer.parseInt(request.getParameter("idhd"));
			response.sendRedirect(request.getContextPath() + "/AddMenuCTController?id=" + index+"&&idhd="+idhd);
			
		}
	}

}