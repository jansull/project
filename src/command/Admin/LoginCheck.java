package command.Admin;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.CommonExcute;
import forestDao.Memberdao;

public class LoginCheck implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		Memberdao dao = new Memberdao();
		String id = request.getParameter("t_id");
		String pw = request.getParameter("t_pw");
		
		try {
			pw = dao.encryptSHA256(pw);
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		String name = dao.getLoginInfo(id,pw);
		String msg="";
		if(name.equals("")) {
			msg="ID 나 비밀번호 가 정확하지 않습니다";
			request.setAttribute("t_url", "Admin");
		}else {
			msg=name+"님  환영 합니다";
			HttpSession session = request.getSession();
			session.setAttribute("sessionId", id);
			session.setAttribute("sessionName", name);
				if(id.equals("test_forest")) {
					session.setAttribute("sessionLevel", "top");
			}	else {
					session.setAttribute("sessionLevel", "member");
			}session.setMaxInactiveInterval(60*30);
			request.setAttribute("t_url", "Index");
		}request.setAttribute("t_msg", msg);

	}

}
