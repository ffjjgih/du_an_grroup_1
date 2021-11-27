package Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.DaoMenu;
import Dao.DaoMenuCT;
import Dao.Daoloaimenu;
import model.LoaiMenu;
import model.Menu;
import model.Mnct;

/**
 * Servlet implementation class updateMenuManager
 */
@MultipartConfig
@WebServlet("/updateMenuManager")
public class updateMenuManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoMenu daomenu;
	private Menu menu;
	private Mnct mnct;
	private DaoMenuCT daomnct;
	private LoaiMenu loaimenu;
	private Daoloaimenu daoloai;

	public updateMenuManager() {
		this.daomenu = new DaoMenu();
		this.menu = new Menu();
		this.mnct = new Mnct();
		this.daomnct = new DaoMenuCT();
		this.daoloai = new Daoloaimenu();
		this.loaimenu = new LoaiMenu();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			int id = Integer.parseInt(request.getParameter("id"));
			menu = this.daomenu.findbyid(id);
			request.setAttribute("menu", menu);
            request.getRequestDispatcher("/views/Manager/EditFoodManager.jsp").forward(request, response);
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
		try {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			String realpath = request.getServletContext().getRealPath("/img");
			Path path = Paths.get(realpath);
			if (!Files.exists(path)) {
				Files.createDirectory(path);
			}
			Part part = request.getPart("chonAnh");
			String namefile = Path.of(part.getSubmittedFileName()).getFileName().toString();
			part.write(Paths.get(realpath.toString(), namefile).toString());
			menu.setImg(namefile);

			String tenmon = request.getParameter("tenMon");
			float gia = Float.parseFloat(request.getParameter("gia"));
			int loai = Integer.parseInt(request.getParameter("chonLoai"));
			loaimenu = daoloai.findbyid(loai);

			menu.setTen_Mon_An(tenmon);
			menu.setGia(gia);
			menu.setLoaiMenu(loaimenu);

			daomenu.insert(menu);

			response.sendRedirect(request.getContextPath() + "/ThemMenuManager" + "?success=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
