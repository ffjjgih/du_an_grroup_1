package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daottban;
import Dao.NhanVienDao;
import Dao.baiVietDao;
import model.BaiViet;
import model.Staff;
import model.TtBan;

/**
 * Servlet implementation class SearchBaiVietController
 */
@WebServlet("/BanDat")
public class SearchBandat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Daottban dao;
	private TtBan tt;
	private NhanVienDao daonv;

	private List<TtBan> lst;
	private Staff f;

	public SearchBandat() {
		this.dao = new Daottban();
		this.daonv = new NhanVienDao();
		this.tt = new TtBan();
		this.lst = new ArrayList<TtBan>();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		int txtSearch = Integer.parseInt(request.getParameter("txt"));
	
		request.setAttribute("ListBDCT", lst);
		System.out.println(lst);
		request.setAttribute("txtS", txtSearch);

		request.getRequestDispatcher("/views/Staff/QuanLyMenuStaff.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
