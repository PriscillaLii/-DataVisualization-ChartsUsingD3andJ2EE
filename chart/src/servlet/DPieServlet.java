package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DPieDao;

@WebServlet("/D3Pie")
public class DPieServlet extends HttpServlet{
	/**
     * @see HttpServlet#HttpServlet()
     */
    public DPieServlet() {
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
		
		List<Object> listPie = new ArrayList<Object>();
		DPieDao dPieDao = new DPieDao();
		listPie = dPieDao.FindAll();
		System.out.println(listPie);
		request.getSession().setAttribute("listPie", listPie);
		response.sendRedirect("chart/DPie.jsp");
	}
}
