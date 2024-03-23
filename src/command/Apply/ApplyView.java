package command.Apply;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDto.Reserve_member;

public class ApplyView implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		String no = request.getParameter("nos");
		int nos = Integer.parseInt(no);
		String header_check = request.getParameter("header_check");
		String password = request.getParameter("password");
		String title = request.getParameter("title");
		String program_index = request.getParameter("program_index");
		String program_name = request.getParameter("program_name");
		String apply_date = request.getParameter("apply_date");
		String kid_count = request.getParameter("kid_count");
		int kid_counts = Integer.parseInt(kid_count);
		String teen_kid_count = request.getParameter("teen_kid_count");
		int teen_kid_counts = Integer.parseInt(teen_kid_count);
		String elementary_count = request.getParameter("elementary_count");
		int elementary_counts = Integer.parseInt(elementary_count);
		String adult_count = request.getParameter("adult_count");
		int adult_counts = Integer.parseInt(adult_count);
		String write_name = request.getParameter("write_name");
		String agency_name = request.getParameter("agency_name");
		String tell_1 = request.getParameter("tell_1");
		String tell_2 = request.getParameter("tell_2");
		String tell_3 = request.getParameter("tell_3");
		String email = request.getParameter("email");
		String reserve_check = request.getParameter("reserve_check");
		Reserve_member dto = new Reserve_member(header_check, password, title, program_index, program_name, apply_date, write_name, agency_name, tell_1, tell_2, tell_3, email, reserve_check, nos, kid_counts, teen_kid_counts, elementary_counts, adult_counts);
		request.setAttribute("dto", dto);

	}

}
