package command.Local;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonExcute;
import common.CommonUtil;
import forestDao.LocalDao;
import forestDto.LocalDto;

public class LocalSave implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		LocalDao dao =new LocalDao();
		int maxsize=1024*1024*5;	
		MultipartRequest mpr =null;
		try {
			mpr = new MultipartRequest(request,CommonUtil.getLocalDir(request),maxsize,"utf-8",new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		int no = dao.LocalMaxNo();
		
		String title = mpr.getParameter("title");
		String img_attach = mpr.getFilesystemName("img_attach");
		String content = mpr.getParameter("summer");
		//String attach = mpr.getFilesystemName("attach");
		String reg_id = mpr.getParameter("user");
		String reg_date = CommonUtil.getTodayTime();
		
		LocalDto dto = new LocalDto(no, 0, title, content, img_attach, reg_id, reg_date);
		int result = dao.LocalSave(dto);
		String msg = "사진 등록 완료 했습니다";
		if(result!=1) {
			msg="사진 등록 실패 했습니다";
		}
		String today = CommonUtil.getToday();
		request.setAttribute("Today", today);
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "LocalFood");
		request.setAttribute("t_gubun", "local_food_page");


	}

}
