package command.Apply;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ApplyDao;

public class ApplyDelete implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ApplyDao dao = new ApplyDao();
		String apply_no = request.getParameter("nos");
		
		int result = dao.Apply_delete(apply_no);
		String msg="삭제 성공 했습니다.";
		if(result!=1) {
			msg ="삭제실패";
		}
		request.setAttribute("t_url", "Apply");
		request.setAttribute("t_msg", msg);

	}

}
