package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Company
 */
@WebServlet("/Company")
public class Company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String gubun=request.getParameter("t_gubun");
		String viewpage="";
		if(gubun==null) {
			viewpage="1_compnay/company_introduce.jsp";
			request.setAttribute("t_gubunMenu", "company_in");
		}else if (gubun.equals("company_introduce")) {
			viewpage="1_compnay/company_introduce.jsp";
			request.setAttribute("t_gubunMenu", "company_in");
		}else if (gubun.equals("history")) {
			viewpage="1_compnay/company_history.jsp";
			request.setAttribute("t_gubunMenu", "company_history");
		}else if (gubun.equals("preson")) {
			viewpage="1_compnay/preson.jsp";
			request.setAttribute("t_gubunMenu", "company_person");
		}
		RequestDispatcher rd = request.getRequestDispatcher(viewpage);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
