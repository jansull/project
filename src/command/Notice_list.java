package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ForestDao;
import forestDto.Notice_view_dao;

public class Notice_list implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ForestDao dao = new ForestDao();
		ArrayList<Notice_view_dao> dtos = dao.get_notice_view_list();
		request.setAttribute("dtos", dtos);

	}

}
