package Controller.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao_Staff;
import model.Staff;

/**
 * Servlet implementation class EmployeeManager
 */
@WebServlet({
	"/EmployeeManager",
	"/EmployeeManager/Save"
	})
public class EmployeeManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Staff st;
    private Dao_Staff daoST;
	
    public EmployeeManager() {
       this.st = new Staff();
       this.daoST = new Dao_Staff();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/views/Manager/QuanLyNhanVien.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String hoTen = request.getParameter("name");
		String phone = request.getParameter("phone");
		String gioiTinh = request.getParameter("flexRadioDefault");
		String address = request.getParameter("address");
		
		String url = request.getRequestURL().toString();
		if(url.contains("Save")) {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			response.sendRedirect(request.getContextPath()+"/EmployeeManager?"+"succes=1");
		}else {
			response.sendRedirect(request.getContextPath()+"/EmployeeManager?"+"error=1");
		}
		
	}

}
