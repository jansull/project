package command.Apply;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.ApplyDao;
import forestDto.Reserve_member;

public class ReserveCheck implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ApplyDao dao = new ApplyDao();
		int no = dao.getMaxNo();
		String 	header_check = request.getParameter("header_check");
		String user_password = request.getParameter("user_password");
		
		try {
			user_password = dao.encryptSHA256(user_password);
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		String user_title=request.getParameter("user_title");
		String program_index=request.getParameter("program_index");
		String program_name=request.getParameter("program_name");
		String apply_date=request.getParameter("apply_date");
		String kid_count=request.getParameter("kid_count");
		int kid_counts=Integer.parseInt(kid_count);
		String teen_kid_count=request.getParameter("teen_kid_count");
		int teen_kid_counts=Integer.parseInt(teen_kid_count);
		String elementary_count=request.getParameter("elementary_count");
		int elementary_counts=Integer.parseInt(elementary_count);
		String adult_count=request.getParameter("adult_count");
		int adult_counts=Integer.parseInt(adult_count);
		String write_name=request.getParameter("write_name");
		String agency_name=request.getParameter("agency_name");
		String tell_1=request.getParameter("tell_1");
		String tell_2=request.getParameter("tell_2");
		String tell_3=request.getParameter("tell_3");
		String email=request.getParameter("email");
		Reserve_member dto = new Reserve_member(header_check, user_password, user_title, program_index, program_name, apply_date, write_name, agency_name, tell_1, tell_2, tell_3, email, no, kid_counts, teen_kid_counts, elementary_counts, adult_counts);
		System.out.println(dto);
		int result =dao.Apply_wirte(dto);
		String msg= "등록 성공하였습니다";
		if(result!=1) {
			msg="실패";
		}
		
		
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Apply");
	}

}
