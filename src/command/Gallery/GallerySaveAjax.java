package command.Gallery;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.CommonUtil;
import forestDao.GalleryDao;
import forestDto.GalleryDto;

/**
 * Servlet implementation class GallerySaveAjax
 */
@WebServlet("/GallerySaveAjax")
public class GallerySaveAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GallerySaveAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GalleryDao dao = new GalleryDao();
        int maxsize = 1024 * 1024 * 5;
        MultipartRequest mpr = null;
        try {
            mpr = new MultipartRequest(request, CommonUtil.getGalleryDir(request), maxsize, "utf-8", new DefaultFileRenamePolicy());
        } catch (IOException e) {
            e.printStackTrace();
        }
        int no = dao.GalleyMaxNo();
        String title = mpr.getParameter("title");
        String content = mpr.getParameter("summer");
        String gallery_attach1 = mpr.getFilesystemName("gallery_attach1");
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
        if (result != 1) {
            msg = "사진 등록 실패 했습니다";
        }

        // 응답으로 메시지 전송
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(msg);
	}

}
