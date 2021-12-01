package Controller.Staff;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoMenu;
import Dao.Daoloaimenu;
import model.LoaiMenu;
import model.Menu;

/**
 * Servlet implementation class searchViewMenu
 */
@WebServlet("/searchViewMenu")
public class searchViewMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Menu menu;
	private List<Menu>lst;
	
	private DaoMenu daomenu;
	private LoaiMenu loai;
	private Daoloaimenu daoloai;
	private List<LoaiMenu> lstloaimn;
    public searchViewMenu() {
    	 super();
         this.loai= new LoaiMenu();
         this.daoloai= new Daoloaimenu();
         this.menu= new Menu();
         this.daomenu= new DaoMenu();
         this.lstloaimn = new ArrayList<LoaiMenu>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String txtSearch = request.getParameter("txt");
		lst = daomenu.findName(txtSearch);
		

		request.setAttribute("ListMenu", lst);
		request.setAttribute("txtSearch", txtSearch);
		
		request.getRequestDispatcher("/views/Staff/ViewMenuStaff.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
