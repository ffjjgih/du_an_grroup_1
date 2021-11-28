package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoMenu;
import model.Menu;

@WebServlet("/SeacherMenuStaff")
public class SeacherMenuStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Menu menu;
	private List<Menu>lst;
	private DaoMenu daomenu;

	public SeacherMenuStaff() {
    menu= new Menu();
    daomenu= new DaoMenu();
 
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int idbdct= Integer.parseInt(request.getParameter("id"));
		int idhd= Integer.parseInt(request.getParameter("idhd"));
		request.setAttribute("idbdct", idbdct);
		request.setAttribute("idhd", idhd);
		String txtSearch = request.getParameter("search");
		lst = daomenu.findName(txtSearch);
		request.setAttribute("monan", lst);
		request.setAttribute("txtS", txtSearch);
		request.getRequestDispatcher("/views/Staff/StaffThemMon.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	

	}

}
