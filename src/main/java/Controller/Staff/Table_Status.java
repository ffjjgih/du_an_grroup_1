package Controller.Staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Daottban;
import model.TtBan;

/**
 * Servlet implementation class Table_Status
 */
@WebServlet("/Table_Status")
public class Table_Status extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Daottban daottban;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Table_Status() {
        super();
        this.daottban=new Daottban();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//bàn trống
		List<TtBan> lstempty=this.daottban.showemptytable();
		//bàn đã xác nhận
		List<TtBan> lstcf=this.daottban.showtableconfirm();
		//bàn đang sử dụng
		List<TtBan> lstactive=this.daottban.showtableactive();
		System.out.println("abc: "+lstactive.size());
		//hiển thị dữ liệu nên jsp
		request.setAttribute("lstempty", lstempty);
		request.setAttribute("lstcf", lstcf);
		request.setAttribute("lstactive", lstactive);
		request.getRequestDispatcher("/views/Staff/QuanLyDatBanStaff.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
