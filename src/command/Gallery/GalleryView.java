package command.Gallery;

import javax.servlet.http.HttpServletRequest;

import common.CommonExcute;
import forestDao.GalleryDao;
import forestDao.NoticeDao;
import forestDto.GalleryDto;
import forestDto.NoticeViewDto;

public class GalleryView implements CommonExcute {

	@Override
	public void excute(HttpServletRequest request) {
		GalleryDao dao = new GalleryDao();
		String no = request.getParameter("gallery_no");
		GalleryDto dto = dao.GalleryView(no);
		request.setAttribute("dto", dto);

	}

}
