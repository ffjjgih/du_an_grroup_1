package Controller.Staff;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.io.FilenameUtils;

import Dao.NhanVienDao;
import Dao.baiVietDao;
import model.BaiViet;
import model.Staff;

@MultipartConfig
@WebServlet({ "/HomeStaffController", "/HomeStaffController/create", "/HomeStaffController/update/*"})
public class HomeStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private baiVietDao dao;
	private BaiViet bv;
	private NhanVienDao daonv;
	private baiVietDao bvDAO;
	private List<BaiViet> lst;
	private Staff f;

	public HomeStaffController() {
		this.dao = new baiVietDao();
		this.daonv = new NhanVienDao();
		this.bv = new BaiViet();
		this.lst = new ArrayList<BaiViet>();
		this.bvDAO = new baiVietDao();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		findID(request, response);
		request.getRequestDispatcher("views/Staff/QuanLyBaiVietStaff.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURL().toString();
		System.out.println(url);

		if (url.contains("create")) {
			insert(request, response);
			System.out.println("insert");

		}  else if (url.contains("update")) {
			int index = Integer.parseInt(request.getParameter("id"));
			response.sendRedirect(request.getContextPath() + "/UpdateBaiVietController?id=" + index);
		}
		findID(request, response);
	}

	private void findID(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		Staff staff = (Staff) session.getAttribute("acountST");

		lst = dao.findIDNV(staff);
		request.setAttribute("listBV", lst);
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			Staff staff = (Staff) session.getAttribute("acountST");
			String realpath = request.getServletContext().getRealPath("/img");
			Path path = Paths.get(realpath);
			if (!Files.exists(path)) {
				Files.createDirectory(path);
			}
			Part part = request.getPart("chonAnh");
			String namefile = Path.of(part.getSubmittedFileName()).getFileName().toString();
			part.write(Paths.get(realpath.toString(), namefile).toString());
			bv.setImg(namefile);
			String mota = request.getParameter("mota");
			String tieude = request.getParameter("tieuDe");
			String link = request.getParameter("link");

			bv.setTen_tieu_de(tieude);
			bv.setLink(link);
			bv.setNoi_dung(mota);
			bv.setStaff(staff);

			dao.insert(bv);

			response.sendRedirect(request.getContextPath() + "/HomeStaffController" + "?success=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
