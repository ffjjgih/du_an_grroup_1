package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.DaoBanDatCT;
import model.Bdct;

@WebServlet({ "/QuanLiMenuController", "/QuanLiMenuController/bdct" })
public class QuanLiMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Bdct bdct;
	private DaoBanDatCT daobdct;

	public QuanLiMenuController() {
		bdct = new Bdct();
		daobdct = new DaoBanDatCT();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Bdct> lstBDCT = daobdct.getall();
		request.setAttribute("ListBDCT", lstBDCT);

		int index = daobdct.count();
		request.setAttribute("bv", index);
		System.out.println(index);
		
		request.getRequestDispatcher("/views/Staff/QuanLyMenuStaff.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		int idbd = Integer.parseInt(request.getParameter("idbdct"));
		this.bdct = this.daobdct.findbyid(idbd);		
		response.sendRedirect(request.getContextPath() + "/menuCTController?id=" + idbd);
	}

}