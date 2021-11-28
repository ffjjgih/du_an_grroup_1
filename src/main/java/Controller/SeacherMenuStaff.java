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

		String txtSearch = request.getParameter("txt");
		this.lst = daomenu.findName(txtSearch);
		System.out.println(lst);
		request.setAttribute("monan", lst);
		request.setAttribute("txtS", txtSearch);

		request.getRequestDispatcher("/views/Staff/StaffThemMon.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
