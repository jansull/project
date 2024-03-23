package command.Gallery;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonExcute;
import common.CommonUtil;
import forestDao.GalleryDao;
import forestDto.GalleryDto;

public class GallerySave implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		GalleryDao dao =new GalleryDao();
		int maxsize=1024*1024*5;	
		MultipartRequest mpr =null;
		try {
			mpr = new MultipartRequest(request,CommonUtil.getGalleryDir(request),maxsize,"utf-8",new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		int no = dao.GalleyMaxNo();
		String title = mpr.getParameter("title");
		String content = mpr.getParameter("summer");
		String gallery_attach1 = mpr.getFilesystemName("files");
		System.out.println(gallery_attach1);
		String attach_1 = mpr.getParameter("gallery_attachs0");
		String attach_2 = mpr.getParameter("gallery_attachs1");
		String attach_3 = mpr.getParameter("gallery_attachs2");
		String attach_4 = mpr.getParameter("gallery_attachs3");
		String attach_5 = mpr.getParameter("gallery_attachs4");
		String reg_id = mpr.getParameter("user");
		String reg_date = CommonUtil.getTodayTime();
		GalleryDto dto = new GalleryDto(no, 0, title, content, attach_1, attach_2, attach_3, attach_4, attach_5, reg_id, reg_date);
		int result = dao.GallerySave(dto);
		String msg = "사진 등록 완료 했습니다";
		if(result!=1) {
			msg="사진 등록 실패 했습니다";
		}
		String today = CommonUtil.getToday();
		request.setAttribute("Today", today);
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Community");
		request.setAttribute("t_gubun", "gallery");

	}

}
