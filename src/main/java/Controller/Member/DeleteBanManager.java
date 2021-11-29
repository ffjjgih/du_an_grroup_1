package Controller.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daottban;

/**
 * Servlet implementation class DeleteBanManager
 */
@WebServlet("/DeleteBanManager")
public class DeleteBanManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Daottban daottban;

	public DeleteBanManager() {
		super();
		daottban = new Daottban();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			daottban.delete(id);
			System.out.println("advvcg");
			response.sendRedirect(request.getContextPath() + "/ThembanManager?id="+id+"&&success=1");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
