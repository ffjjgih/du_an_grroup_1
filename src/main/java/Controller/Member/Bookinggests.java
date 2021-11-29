package Controller.Member;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

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
 * Servlet implementation class Bookinggests
 */
@WebServlet("/Bookinggests")
public class Bookinggests extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daouser daouser;
    private KhachHang user;
    private ThongTinBanDat ttbd;
    private DaoTTBD daottbd;
    public Bookinggests() {
        this.daouser=new Daouser();
        this.user=new KhachHang();
        this.ttbd=new ThongTinBanDat();
        this.daottbd=new DaoTTBD();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("idgest"));
		this.user=this.daouser.findbyid(id);
		request.setAttribute("user", this.user);
		request.getRequestDispatcher("/views/assets/BookingGuest.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ngaydat=request.getParameter("dateDatBan");
		String giodat=request.getParameter("timedatban")+":00";
		String note=request.getParameter("note");
		int sl=Integer.parseInt(request.getParameter("so_luong"));
		int id=Integer.parseInt(request.getParameter("idgest"));
		this.user=this.daouser.findbyid(id);
		this.ttbd.setKhachHang(user);
		this.ttbd.setSo_Luong_Nguoi(sl);
		this.ttbd.setTrang_Thai("Waitting line");
		this.ttbd.setGhi_Chu(note);
		Date date=Date.valueOf(ngaydat);
		Time time=Time.valueOf(giodat);
		this.ttbd.setNgayDatBan(date);
		this.ttbd.setGioDatBan(time);
		this.daottbd.insert(ttbd);
	}

}
