package Controller.Staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoBanDatCT;
import Dao.DaoHDCT;
import Dao.DaoHoadon;
import Dao.DaoMenu;
import Dao.DaoMenuCT;
import Dao.Dao_Staff;
import Dao.Daoloaimenu;
import model.Bdct;
import model.Hdct;
import model.HoaDon;
import model.LoaiMenu;
import model.Menu;
import model.Mnct;
import model.Staff;


@WebServlet({"/AddMenuCTController","/AddMenuCTController/createe"})
public class AddMenuCTController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private Bdct bdct;
    private DaoBanDatCT daobdct;
    private DaoMenu daomenu;
    private Menu menu;
    private Mnct mnct;
    private HoaDon hd;
    private DaoHoadon daohd;
	private DaoMenuCT daomnct;
	private Daoloaimenu daoloai;
	private LoaiMenu loai;
	private Hdct hdtc;
	private DaoHDCT daohdct;
	private Dao_Staff daostaff;
    public AddMenuCTController() {
		 this.bdct= new Bdct();
		 this.daobdct= new DaoBanDatCT();
		 this.daomenu= new DaoMenu();
		 this.loai= new LoaiMenu();
		 this.menu= new Menu();
		 this.mnct= new Mnct();
		 this.bdct= new Bdct();
		 this.daomnct= new DaoMenuCT();
		 this.daoloai= new Daoloaimenu();
		 this.hdtc=new Hdct();
		 this.daohdct=new DaoHDCT();
		 this.daohd=new DaoHoadon();
		 this.hd=new HoaDon();
		 this.daostaff=new Dao_Staff();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		this.bdct = this.daobdct.findbyid(id);
		int idhd= Integer.parseInt(request.getParameter("idhd"));
		
		request.setAttribute("bdct", this.bdct);
		request.setAttribute("idbdct", id);
		request.setAttribute("idmn", menu);
		request.setAttribute("idhd", idhd);
		
		List<Menu> lstmenu= daomenu.getall();
		request.setAttribute("monan", lstmenu);
		
		List<LoaiMenu> lstLoai= this.daoloai.getall();
		request.setAttribute("listLoai", lstLoai);
		
		request.getRequestDispatcher("/views/Staff/StaffThemMon.jsp").forward(request, response);
	}

		
	}

