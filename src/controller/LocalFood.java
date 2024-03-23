package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Local.LocalList;
import command.Local.LocalSave;
import command.Local.LocalView;
import common.CommonExcute;
import common.CommonUtil;

/**
 * Servlet implementation class LocalFood
 */
@WebServlet("/LocalFood")
public class LocalFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocalFood() {
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
			CommonExcute Local = new LocalList();
			Local.excute(request);
			viewpage="2_program/6_local/local_food.jsp";
			request.setAttribute("t_gubunMenu", "local_forest");
		}else if (gubun.equals("local_food_page")) {
			CommonExcute Local = new LocalList();
			Local.excute(request);
			viewpage="2_program/6_local/local_food.jsp";
			request.setAttribute("t_gubunMenu", "local_forest");
		}else if (gubun.equals("local_save_form")) {
			String today = CommonUtil.getToday();
			request.setAttribute("Today", today);
			viewpage="2_program/6_local/local_write.jsp";
			request.setAttribute("t_gubunMenu", "local_forest");
		}else if (gubun.equals("local_save")) {
			CommonExcute Local = new LocalSave();
			Local.excute(request);
			viewpage="common_alert_view.jsp";
			request.setAttribute("t_gubunMenu", "local_forest");
		}else if (gubun.equals("local_view")) {
			CommonExcute Local = new LocalView();
			Local.excute(request);
			viewpage="2_program/6_local/local_view.jsp";
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
