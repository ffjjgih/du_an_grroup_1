package Controller.Member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daouser;
import model.KhachHang;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private Daouser dao;

	public SignUp() {
		this.dao = new Daouser();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/assets/HomeKhachHang.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("user");
		String password = request.getParameter("password");
		String hoten = request.getParameter("hoten");
		String sdt = request.getParameter("sdt");
		String gmail = request.getParameter("gmail");
		KhachHang user=this.dao.checkAcc(username);
		KhachHang u=this.dao.checkAcc(sdt);
		if (user != null && u == null) {
			response.sendRedirect(request.getContextPath() + "/SignUp" + "?errorSignUp=1");
			return;
		} else if (user != null && u != null) {
			response.sendRedirect(request.getContextPath() + "/SignUp" + "?errorSignUp=2");
			return;
		} else if (u != null && user == null) {
			if(u.getUsername()!=null) {
				response.sendRedirect(request.getContextPath() + "/SignUp" + "?errorSignUp=2");
				return;
			}else {
				KhachHang kh1 = new KhachHang(0, gmail, hoten, password, sdt, username);
				 this.dao.updateKH(kh1);
				 response.sendRedirect(request.getContextPath() + "/SignUp" + "?succesSignUp=2");
			}
		}else if (u == null && user == null) {
			KhachHang kh = new KhachHang(0, gmail, hoten, password, sdt, username);
			dao.insert(kh);
			response.sendRedirect(request.getContextPath() + "/SignUp" + "?succesSignUp=1");
		}
		
	}

}
