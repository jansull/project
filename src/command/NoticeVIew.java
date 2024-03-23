package command;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.NoticeDao;
import forestDto.NoticeViewDto;

public class NoticeVIew implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		NoticeDao dao = new NoticeDao();
		String no = request.getParameter("notice_no");
		NoticeViewDto dto = dao.get_notice_view(no);
		request.setAttribute("dto", dto);

	}

}
