package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Notice_list;
import command.Notice_write;
import common.CommonExcute;
import common.CommonUtil;
import forestDao.ForestDao;

/**
 * Servlet implementation class Community
 */
@WebServlet("/Community")
public class Community extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Community() {
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
			CommonExcute community =new Notice_list();
			community.excute(request);
			viewpage="4_community/notice.jsp";
			request.setAttribute("t_gubunMenu", "notice");
		}else if (gubun.equals("notice")) {
			CommonExcute community =new Notice_list();
			community.excute(request);
			viewpage="4_community/notice.jsp";
			request.setAttribute("t_gubunMenu", "notice");
		}else if (gubun.equals("notice_view")) {
			viewpage="4_community/notice_view.jsp";
			request.setAttribute("t_gubunMenu", "notice");
		}else if (gubun.equals("notice_write")) {
			String today = CommonUtil.getToday();
			request.setAttribute("Today", today);
			viewpage="4_community/notice_write.jsp";
		}else if (gubun.equals("notice_save")) {
			CommonExcute community = new Notice_write();
			community.excute(request);
			viewpage="common_alert.jsp";
		}else if (gubun.equals("gallery")) {
			viewpage="4_community/gallery.jsp";
			request.setAttribute("t_gubunMenu", "gallery");
		}else if (gubun.equals("gallery_write")) {
			String today = CommonUtil.getToday();
			request.setAttribute("Today", today);
			viewpage="4_community/gallery_write.jsp";
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
