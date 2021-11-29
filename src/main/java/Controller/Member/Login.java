package Controller.Member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Dao_Staff;
import Dao.Daouser;
import model.KhachHang;
import model.Staff;

@WebServlet("/Login")
@MultipartConfig
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Daouser daouser;
	private Dao_Staff daoStaff;

	public Login() {
		this.daoStaff = new Dao_Staff();
		this.daouser = new Daouser();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("views/assets/HomeKhachHang.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		KhachHang kh = this.daouser.login(username, password);
		Staff st = this.daoStaff.login(username, password);
		
		if (kh != null) {
			HttpSession session = request.getSession();
			session.setAttribute("acountKH", kh);
			showdatenow(request, response);
			response.sendRedirect(request.getContextPath() + "/HomeKhachHangServlet");
		} else {
			if (st != null) {
				if (st.getChucVu().equals("Staff")) {
					HttpSession session = request.getSession();
					session.setAttribute("acountST", st);
					response.sendRedirect(request.getContextPath() + "/HomeStaffController");
				} else if (st.getChucVu().equals("Manager")) {
					HttpSession session = request.getSession();
					//session.setAttribute("acountST", st);
					response.sendRedirect(request.getContextPath() + "/HomeManager");
				}
			} else {
				response.sendRedirect(request.getContextPath()+"/Login?errorAccWrong=1");
			}

		}

	}
	
	private void showdatenow(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Calendar c=Calendar.getInstance();
		SimpleDateFormat fommat=new SimpleDateFormat("dd/MM/yyyy");
		int day=c.get(Calendar.DATE);
		int month=c.get(Calendar.MONTH);
		int year=c.get(Calendar.YEAR);
		c.set(year, month, day);
		String date1=fommat.format(c.getTime());
		session.setAttribute("date_book",date1 );
		
	}
}