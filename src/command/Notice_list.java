package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import common.CommonUtil;
import forestDao.ForestDao;
import forestDao.NoticeDao;
import forestDto.Notice_view_dao;

public class Notice_list implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		NoticeDao dao = new NoticeDao();
		String search = request.getParameter("t_search");
		String select = request.getParameter("t_select");
		if(select==null) {
			select="no";
			search="";
		}
		/* paging 설정 start*/
		int total_Count = dao.getTotalCount(select,search);
		int list_setup_count = 5;  //한페이지당 출력 행수 
		int pageNumber_count = 3;  //한페이지당 출력 페이지 갯수
		
		String nowPage = request.getParameter("t_nowPage");
		int current_page = 0; // 현재페이지 번호
		int total_page = 0;    // 전체 페이지 수
		
		if(nowPage == null || nowPage.equals("")) current_page = 1; 
		else current_page = Integer.parseInt(nowPage);
		
		total_page = total_Count / list_setup_count;  // 몫 : 2
		int rest = 	total_Count % list_setup_count;   // 나머지:1
		if(rest !=0) total_page = total_page + 1;     // 3
		
		int start = (current_page -1) * list_setup_count + 1;
		start = start-1;
		int end   = current_page * list_setup_count;
		/* paging 설정 end*/	
		int order = total_Count - (list_setup_count *(current_page-1));
		 String displayPage = 
					CommonUtil.pageListPost(current_page, total_page, pageNumber_count);
		
		
		ArrayList<Notice_view_dao> dtos = dao.get_notice_view_list(search, select, start,end);
		request.setAttribute("dtos", dtos);
		request.setAttribute("search", search);
		request.setAttribute("select", select);
		request.setAttribute("total_Count", total_Count);
		request.setAttribute("order", order);
		request.setAttribute("displayPage", displayPage);
	}

}
