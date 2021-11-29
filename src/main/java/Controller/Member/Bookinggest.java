package Controller.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoTTBD;
import Dao.Daouser;
import model.KhachHang;
import model.ThongTinBanDat;

/**
 * Servlet implementation class Bookinggest
 */
@WebServlet("/Bookinggest")
public class Bookinggest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Daouser daouser;
       private KhachHang kh;
       private DaoTTBD daottbd;
       private ThongTinBanDat ttbd;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookinggest() {
        this.daouser=new Daouser();
        this.kh=new KhachHang();
        this.daottbd=new DaoTTBD();
        this.ttbd=new ThongTinBanDat();
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
		if(kh==null) {
			KhachHang k=new KhachHang();
			k.setSdt(sdt);
			this.daouser.insert(k);
			KhachHang user=this.daouser.finduserbyphone(sdt);
			response.sendRedirect(request.getContextPath()+"/Bookinggests?idgest="+user.getSdt());
		}else {
			this.ttbd=this.daottbd.findttbdbystatus(kh);
			if(this.ttbd==null) {
				response.sendRedirect(request.getContextPath()+"/Bookinggests?idgest="+kh.getSdt());
			}else {
				
			}
			
		}
	}

}
