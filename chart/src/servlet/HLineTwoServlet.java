package servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.HLineTwoDao;
@WebServlet("/HLine2")
public class HLineTwoServlet extends HttpServlet{
	/**
     * @see HttpServlet#HttpServlet()
     */
    public HLineTwoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		List<Object> listLine2 = new ArrayList<Object>();
		HLineTwoDao hLineDao = new HLineTwoDao();
		listLine2 = hLineDao.findAll();
		System.out.println(listLine2);
		request.getSession().setAttribute("listLine2", listLine2);
		response.sendRedirect("chart/Hline2.jsp");
	}
}
