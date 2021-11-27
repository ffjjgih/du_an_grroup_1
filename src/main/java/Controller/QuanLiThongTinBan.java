package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoBanDatCT;
import Dao.DaoTTBD;
import model.Bdct;
import model.ThongTinBanDat;

/**
 * Servlet implementation class QuanLiThongTinBan
 */
@WebServlet("/QuanLiThongTinBan")
public class QuanLiThongTinBan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Bdct bdct;
	private DaoBanDatCT daobdct;
	private ThongTinBanDat ttbd;
	private DaoTTBD daottbd;
	
    public QuanLiThongTinBan() {
        super();
        this.bdct= new  Bdct();
        this.daobdct= new DaoBanDatCT();
        this.ttbd= new ThongTinBanDat();
        this.daottbd= new DaoTTBD();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ThongTinBanDat> lstttbd= daottbd.getall();
		request.setAttribute("TTBD", lstttbd);
		
		request.getRequestDispatcher("/views/Staff/QuanLyThongTinBan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
