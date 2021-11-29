package Controller.Manager;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.DaoMenu;
import Dao.Daoloaimenu;
import model.LoaiMenu;
import model.Menu;

@MultipartConfig
@WebServlet({"/ThemMenuManager","/ThemMenuManager/create","/ThemMenuManager/edit"})
public class ThemMenuManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private DaoMenu daomenu;
    private Menu menu;
    private LoaiMenu loaimenu;
    private Daoloaimenu daoloai;
    public ThemMenuManager() {
        this.daomenu= new DaoMenu();
        this.menu= new Menu();
        this.daoloai= new Daoloaimenu();
        this.loaimenu= new LoaiMenu();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		List<Menu> lst1 = daomenu.getall();
		request.setAttribute("listmenu", lst1);
		List<LoaiMenu> lstLoai= daoloai.getall();
		request.setAttribute("listCC", lstLoai);
		request.getRequestDispatcher("/views/Manager/QuanLyThucDon.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String url=request.getRequestURL().toString();
		if(url.contains("create")) {
			insert(request,response);
		}else if(url.contains("edit")) {
			int index = Integer.parseInt(request.getParameter("id"));
			response.sendRedirect(request.getContextPath() + "/updateMenuManager?id=" + index);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) {
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
			String tenmon = request.getParameter("tenMon");
			float gia =Float.parseFloat(request.getParameter("gia")) ;
			int loai =Integer.parseInt( request.getParameter("chonLoai"));
			int trangthai =Integer.parseInt( request.getParameter("trangthai"));
			loaimenu=daoloai.findbyid(loai);
			menu.setTen_Mon_An(tenmon);
			menu.setGia(gia);
			menu.setImg(namefile);
			menu.setLoaiMenu(loaimenu);
			menu.setTrang_Thai(trangthai);
			daomenu.insert(menu);
			response.sendRedirect(request.getContextPath() + "/ThemMenuManager"+"?success=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
