package Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

//		HashMap<String, Integer> tkbd = new HashMap<String, Integer>();
//		tkbd.put("Th�ng 1", 200);
//		tkbd.put("Th�ng 2", 100);
//		tkbd.put("Th�ng 3", 223);
//		tkbd.put("Th�ng 4", 199);
//		tkbd.put("Th�ng 5", 40);
//		tkbd.put("Th�ng 6", 45);
//		tkbd.put("Th�ng 7", 55);
//		tkbd.put("Th�ng 8", 60);
//		tkbd.put("Th�ng 9", 110);
//		tkbd.put("Th�ng 10", 80);
//		tkbd.put("Th�ng 11", 30);
//		tkbd.put("Th�ng 12", 80);
//		int sum = 0;
//		for (HashMap.Entry<String, Integer> o : tkbd.entrySet()) {
//			sum += o.getValue();
//		}
//		request.setAttribute("listTkbd", tkbd);
//		request.setAttribute("sum", sum);
		
		request.getRequestDispatcher("views/Manager/HomeManager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath()+"/test");
	}

}
