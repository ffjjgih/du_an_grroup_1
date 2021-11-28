package Controller;

import java.io.IOException;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoBanDatCT;
import Dao.DaoMenu;
import Dao.DaoMenuCT;
import model.Bdct;
import model.Menu;
import model.Mnct;

/**
 * Servlet implementation class test
 */
@WebServlet({ "/test" })
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public test() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Menu menu = new Menu();
		DaoMenu dao = new DaoMenu();

		 List<Menu> lst = dao.trangthai(1,2);
        System.out.println(lst);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/test");
	}

}
