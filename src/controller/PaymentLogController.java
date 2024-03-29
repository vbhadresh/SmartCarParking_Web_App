package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ParkingEmployeeVO;
import vo.ParkingVO;
import vo.PersonVO;
import vo.UserVO;
import dao.ParkingDAO;
import dao.ParkingEmployeeDAO;
import dao.PaymentDAO;
import dao.PersonDAO;
import dao.TransactionDAO;
import dao.UserDAO;
import dao.UserLogDAO;



/**
 * Servlet implementation class Circular
 */
@SuppressWarnings("rawtypes")
@WebServlet("/PaymentLogController")
public class PaymentLogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentLogController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    PaymentDAO DAO_obj=new PaymentDAO();
		
		List obj= DAO_obj.showAll();
		
		HttpSession session = request.getSession();
		session.setAttribute("obj_all", obj);
		response.sendRedirect(request.getContextPath()+"/views/admin/PaymentLog/viewPaymentLog.jsp");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
			
			
			
			
		
		
	}
}
