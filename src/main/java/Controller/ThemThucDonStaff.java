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
import Dao.DaoMenu;
import Dao.Daoloaimenu;
import model.Bdct;
import model.KhachHang;
import model.LoaiMenu;
import model.Menu;

/**
 * Servlet implementation class ThemThucDonStaff
 */
@WebServlet("/ThemThucDonStaff")
public class ThemThucDonStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
   private Daoloaimenu daoloaimenu;
   private List<LoaiMenu> lstLoaiMenu;
   private Bdct bdct;
   private DaoBanDatCT daobdct;
   private List<Bdct> lstbdct;
   private LoaiMenu loai;
   private DaoMenu daomenu;
   private List<Menu> lstmn;
    public ThemThucDonStaff() {
    	daoloaimenu=new Daoloaimenu();
    	lstLoaiMenu= new ArrayList<LoaiMenu>();
    	bdct= new Bdct();
    	daobdct = new DaoBanDatCT();
    	lstbdct= new ArrayList<Bdct>();
    	loai= new LoaiMenu();
    	daomenu= new DaoMenu();
    	lstmn= new ArrayList<Menu>();
    	
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		lstmn= daomenu.getall();
		request.setAttribute("monan", lstmn);
		
		request.getRequestDispatcher("/views/Staff/StaffThemMon.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		response.sendRedirect(request.getContextPath()+"/MNCTBandatController");
	}

}
