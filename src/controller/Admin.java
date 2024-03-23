package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Admin.LogOut;
import command.Admin.LoginCheck;
import common.CommonExcute;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
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
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sessionId");
		if(gubun==null) {
			viewpage="Admin/Login.jsp";
			request.setAttribute("t_gubunMenu", "login_admin");
		}else if (gubun.equals("login")) {
			viewpage="Admin/Login.jsp";
			request.setAttribute("t_gubunMenu", "login_admin");
		}else if (gubun.equals("loginCheck")) {
			CommonExcute Admin = new LoginCheck();
			Admin.excute(request);
			viewpage="common_alert.jsp";
		}else if (gubun.equals("logout")) {
			CommonExcute Admin = new LogOut();
			Admin.excute(request);
			viewpage="common_alert.jsp";
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
