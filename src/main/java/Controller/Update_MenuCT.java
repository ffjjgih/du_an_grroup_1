package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoHDCT;
import Dao.DaoMenuCT;
import model.Hdct;
import model.Mnct;

@WebServlet("/Update_MenuCT")
public class Update_MenuCT extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoMenuCT daomnct;
	private Mnct mnct;
	private DaoHDCT dao_hdct;
	private Hdct hdct;

	public Update_MenuCT() {
		this.daomnct = new DaoMenuCT();
		this.mnct = new Mnct();
		this.dao_hdct = new DaoHDCT();
		this.hdct = new Hdct();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idbdct = Integer.parseInt(request.getParameter("idbcct"));
		int idmenuCT = Integer.parseInt(request.getParameter("idmenuCT"));
		int idhdCT = Integer.parseInt(request.getParameter("idHDCT"));
		int sl = Integer.parseInt(request.getParameter("spinner"));
		int slUP = Integer.parseInt(request.getParameter("spinnerr"));
		this.mnct = this.daomnct.findbyid(idmenuCT);
		this.mnct.setSo_luong(sl);
		this.daomnct.update(this.mnct);
		this.hdct = this.dao_hdct.findbyid(idhdCT);
		this.hdct.setSo_luong(slUP);
		this.dao_hdct.update(this.hdct);
		response.sendRedirect(request.getContextPath() + "/menuCTController?id=" + idbdct);

	}

}