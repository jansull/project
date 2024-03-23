package command.Apply;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ApplyDao;
import forestDto.Reserve_member;

public class ReservationChange implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ApplyDao dao =new ApplyDao();
		
		String check_value = request.getParameter("check_value");
		
		String no = request.getParameter("nos");
		int result=dao.ChangeReservation(no,check_value);
		
		String msg="예약확인 으로 변경 되었습니다!";
		
		if(check_value.equals("n")) {
			msg="예약대기 로 변경 되었습니다!";
		}
		if(result!=1) {
			msg ="실패";
		}
		Reserve_member dto =dao.getAllList(no);
		int nos = dto.getNo();
		String header_check = dto.getHeader_check();
		String password = dto.getPassword();
		String title = dto.getTitle();
		String program_index = dto.getProgram_index();
		String program_name = dto.getProgram_name();
		String apply_date = dto.getApply_date();
		int kid_count = dto.getKid_count();
		int teen_kid_count = dto.getTeen_kid_count();
		int elementary_count = dto.getElementary_count();
		int adult_count = dto.getAdult_count();
		String write_name = dto.getWrite_name();
		String agency_name = dto.getAgency_name();
		String tell_1 = dto.getTell_1();
		String tell_2 = dto.getTell_2();
		String tell_3 = dto.getTell_3();
		String email = dto.getEmail();
		String reserve_check = dto.getReserve_check();
		request.setAttribute("t_url", "Apply");
		request.setAttribute("t_gubun", "Apply_view");
		request.setAttribute("nos", nos);
		request.setAttribute("header_check", header_check);
		request.setAttribute("password", password);
		request.setAttribute("title", title);
		request.setAttribute("program_index", program_index);
		request.setAttribute("program_name", program_name);
		request.setAttribute("apply_date", apply_date);
		request.setAttribute("kid_count", kid_count);
		request.setAttribute("teen_kid_count", teen_kid_count);
		request.setAttribute("elementary_count", elementary_count);
		request.setAttribute("adult_count", adult_count);
		request.setAttribute("write_name", write_name);
		request.setAttribute("agency_name", agency_name);
		request.setAttribute("tell_1", tell_1);
		request.setAttribute("tell_2", tell_2);
		request.setAttribute("tell_3", tell_3);
		request.setAttribute("email", email);
		request.setAttribute("reserve_check", reserve_check);
		request.setAttribute("t_msg", msg);

	}

}
