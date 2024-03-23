package command.Apply;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ApplyDao;
import forestDto.Reserve_member;

public class PassowrdCheck implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ApplyDao dao =new ApplyDao();
		String a_no = request.getParameter("t_id");
		String t_pw_check = request.getParameter("t_pw_check");
		try {
			t_pw_check = dao.encryptSHA256(t_pw_check);
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		String name = dao.CheckPw(a_no,t_pw_check);
		String msg="";
		if(name.equals("")) {
			msg="비밀번호 가 정확하지 않습니다";
			request.setAttribute("t_url", "Apply");
			request.setAttribute("t_gubun", "password_check");
			request.setAttribute("a_no", a_no);
		}else {
			msg="비밀번호 가 맞습니다";
			Reserve_member dto =dao.getAllList(a_no);
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
			
			
		}request.setAttribute("t_msg", msg);

	}

}
