package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daouser;
import model.KhachHang;

/**
 * Servlet implementation class Bookinggest
 */
@WebServlet("/Bookinggest")
public class Bookinggest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Daouser daouser;
       private KhachHang kh;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookinggest() {
        this.daouser=new Daouser();
        this.kh=new KhachHang();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/assets/HeaderKhachHang.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sdt=request.getParameter("phone_number");
		this.kh=this.daouser.finduserbyphone(sdt);
		request.setAttribute("gest", kh);
	}

}
