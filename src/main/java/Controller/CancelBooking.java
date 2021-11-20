package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoCart;
import Dao.DaoTTBD;
import model.ThongTinBanDat;

/**
 * Servlet implementation class CancelBooking
 */
@WebServlet("/CancelBooking")
public class CancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private DaoTTBD daottbd;
    private ThongTinBanDat ttbd;
    private DaoCart daocart;
    public CancelBooking() {
	      this.ttbd=new ThongTinBanDat();
	      this.daottbd=new DaoTTBD();
	      this.daocart=new DaoCart();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		this.ttbd=this.daottbd.findbyid(id);
		this.daocart.deletecartbyttbd(ttbd);
		this.daottbd.delete(id);
		response.sendRedirect(request.getContextPath()+"/Booking");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
