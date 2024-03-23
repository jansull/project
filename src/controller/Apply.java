package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Apply.AdminView;
import command.Apply.ApplyDelete;
import command.Apply.ApplyList;
import command.Apply.ApplyView;
import command.Apply.PassowrdCheck;
import command.Apply.ReservationChange;
import command.Apply.ReserveCheck;
import common.CommonExcute;
import forestDao.ApplyDao;
import forestDto.Applydto;
import forestDto.Reserve_member;

/**
 * Servlet implementation class Apply
 */
@WebServlet("/Apply")
public class Apply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Apply() {
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
		System.out.println("값"+gubun);
		if(gubun==null||gubun.equals("")) {
			CommonExcute Apply = new ApplyList();
			Apply.excute(request);
			viewpage="3_apply/apply.jsp";
		}else if (gubun.equals("apply")) {
			CommonExcute Apply = new ApplyList();
			Apply.excute(request);
			viewpage="3_apply/apply.jsp";
		}else if (gubun.equals("reserve_user")) {
			viewpage="3_apply/reserve_user.jsp";
		}else if (gubun.equals("reserve_check")) {
			CommonExcute Apply=new ReserveCheck();
			Apply.excute(request);
			viewpage="common_alert.jsp";
		}else if(gubun.equals("password_check")) {
			String a_no=request.getParameter("a_no");
			request.setAttribute("a_no", a_no);
			viewpage="3_apply/password_check.jsp";
		}else if(gubun.equals("password_check_go")) {
			CommonExcute Apply = new PassowrdCheck();
			Apply.excute(request);
			viewpage="3_apply/apply_alert_view.jsp";
		}else if (gubun.equals("Apply_view")) {
			CommonExcute Apply = new ApplyView();
			Apply.excute(request);
			viewpage="3_apply/apply_view.jsp";
		}else if (gubun.equals("apply_delete")) {
			CommonExcute Apply = new ApplyDelete();
			Apply.excute(request);
			viewpage="common_alert.jsp";
		}else if (gubun.equals("apply_update_form")) {
			CommonExcute Apply = new ApplyView();
			Apply.excute(request);
			viewpage="3_apply/reserve_update_user.jsp";
		}else if (gubun.equals("ReservationCheck")) {
			CommonExcute Apply = new ReservationChange();
			Apply.excute(request);
			viewpage="3_apply/apply_alert_view.jsp";
		}else if (gubun.equals("Admin_view")) {
			CommonExcute Apply = new AdminView();
			Apply.excute(request);
			viewpage="3_apply/apply_view.jsp";
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
