package command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonExcute;
import common.CommonUtil;
import forestDao.ForestDao;

public class Notice_write implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		ForestDao dao =new ForestDao();
		int maxsize=1024*1024*5;	
		MultipartRequest mpr =null;
		try {
			mpr = new MultipartRequest(request,CommonUtil.getNoticeDir(request),maxsize,"utf-8",new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		int no = dao.get_notice_max_no();
		String title = mpr.getParameter("title");
		String img_attach = mpr.getFilesystemName("img_attach");
		String content = mpr.getParameter("summer");
		String attach = mpr.getFilesystemName("attach");
		String reg_id = mpr.getParameter("user");
		String reg_date = CommonUtil.getTodayTime();
		int result = dao.Notice_Save(no,title,img_attach,content,attach,reg_id,reg_date);
		String msg = "제품 등록 완료 했습니다";
		if(result!=1) {
			msg="제품 등록 실패 했습니다";
		}
		
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Community");
	}

	
}
