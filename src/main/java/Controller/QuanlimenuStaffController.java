package Controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Dao.DaoBanDatCT;
import Dao.DaoTTBD;
import Dao.DaottBan;
import model.Bdct;
import model.ThongTinBanDat;
import model.TtBan;

@WebServlet({"/QuanlimenuStaffController","/QuanlimenuStaffController/bdct"})
public class QuanlimenuStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoTTBD daottbd;
	private DaoBanDatCT daobdct;
	private List<Bdct> lstbdct;
	private List<ThongTinBanDat> lstttbd;
	Bdct bdct;
	ThongTinBanDat ttbd;
	TtBan ttban;
	private DaottBan daottb;

	public QuanlimenuStaffController() {
		bdct = new Bdct();
		ttbd = new ThongTinBanDat();
		daottbd = new DaoTTBD();
		daobdct = new DaoBanDatCT();
		ttban = new TtBan();
		daottb = new DaottBan();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		lstbdct = daobdct.getall();
		request.setAttribute("ListBDCT", lstbdct);
		int index= daobdct.count();
		request.setAttribute("bv", index);
		
	    request.getRequestDispatcher("/views/Staff/QuanLyMenuStaff.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		response.sendRedirect(request.getContextPath() + "/MNCTBandatController?id=" + id);
		
	}

}
