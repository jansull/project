package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Program
 */
@WebServlet("/Program")
public class Program extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Program() {
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
			viewpage="2_program/agency_forest.jsp";
			request.setAttribute("t_gubunMenu", "agency_forest");
		}else if (gubun.equals("agecny")) {
			viewpage="2_program/agency_forest.jsp";
			request.setAttribute("t_gubunMenu", "agency_forest");
		}else if (gubun.equals("green")) {
			viewpage="2_program/green.jsp";
			request.setAttribute("t_gubunMenu", "green_forest");
		}else if (gubun.equals("forest_heal")) {
			viewpage="2_program/forestheal.jsp";
			request.setAttribute("t_gubunMenu", "forest_heal_forest");
		}else if (gubun.equals("school")) {
			viewpage="2_program/school.jsp";
			request.setAttribute("t_gubunMenu", "school_forest");
		}else if (gubun.equals("monitar")) {
			viewpage="2_program/monitar.jsp";
			request.setAttribute("t_gubunMenu", "monitar_forest");
		}else if (gubun.equals("local")) {
			viewpage="2_program/local.jsp";
			request.setAttribute("t_gubunMenu", "local_forest");
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
