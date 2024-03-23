package command.Local;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.LocalDao;
import forestDto.LocalDto;

public class LocalView implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		LocalDao dao = new LocalDao();
		String no = request.getParameter("Local_no");
		LocalDto dto = dao.LocalView(no);
		request.setAttribute("dto", dto);

	}

}
