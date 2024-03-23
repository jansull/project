package command.Apply;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ApplyDao;
import forestDto.Reserve_member;

public class AdminView implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ApplyDao dao =new ApplyDao();
		String no = request.getParameter("nos");
		Reserve_member dto =dao.getAllList(no);
		request.setAttribute("dto", dto);
	}

}
