package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Dao.Daouser;
import model.KhachHang;

@WebServlet("/Login")
@MultipartConfig 
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Daouser daouser;

	public Login() {
		this.daouser = new Daouser();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/assets/DatBanKhach.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		KhachHang kh = this.daouser.login(username, password);
		if (kh != null) {
			HttpSession session = request.getSession();
			session.setAttribute("acountKH", kh);
			response.sendRedirect(request.getContextPath()+ "/HomeKhachHangServlet");
		} else {
			request.setAttribute("message", "Password or UserName is wrong");
			doGet(request, response);
		}

	}

}