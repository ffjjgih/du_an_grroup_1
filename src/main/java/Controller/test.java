package Controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

import Dao.DaoBanDatCT;
import Dao.DaoMenu;
import Dao.DaoMenuCT;
import model.Bdct;
import model.Menu;
import model.Mnct;

/**
 * Servlet implementation class test
 */
@WebServlet({"/test"})
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public test() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		// TODO Auto-generated method stub
//		Map<String, Integer> tkbd = new HashedMap();
//		tkbd.put("Th�ng 1", 200);
//		tkbd.put("Th�ng 2", 100);
//		tkbd.put("Th�ng 3", 223);
//		tkbd.put("Th�ng 4", 199);
//		tkbd.put("Th�ng 5", 40);
//		tkbd.put("Th�ng 6", 45);
//		tkbd.put("Th�ng 7", 55);
//		tkbd.put("Th�ng 8", 60);
//		tkbd.put("Th�ng 9", 110);
//		tkbd.put("Th�ng 10", 80);
//		tkbd.put("Th�ng 11", 30);
//		tkbd.put("Th�ng 12", 80);
//		request.setAttribute("listTkbd", tkbd);
		doGet(request, response);
	}

}
