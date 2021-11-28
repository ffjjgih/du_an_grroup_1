package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ThongKeMenu
 */
@WebServlet("/ThongKeMenu")
public class ThongKeMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ThongKeMenu() {
    	
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/Manager/ThongKeMenu.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int year = Integer.parseInt(request.getParameter("yeartk"));
		response.sendRedirect(request.getContextPath() + "/ThongKeMenu?nam="+year);
	}

}
