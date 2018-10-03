package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DLineDao;
import DAO.DPieDao;

@WebServlet("/D3Line")
public class DLineServlet extends HttpServlet{
	/**
     * @see HttpServlet#HttpServlet()
     */
    public DLineServlet() {
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
		
		List<Object> listLine = new ArrayList<Object>();
		DLineDao dLineDao = new DLineDao();
		listLine = dLineDao.FindAll();
		System.out.println(listLine);
		request.getSession().setAttribute("listLine", listLine);
		response.sendRedirect("chart/DLine.jsp");
	}
}
