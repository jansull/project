package common;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CommonUtil {

	
	
	//세션로그인 level 값
		public static String getSessionLevel(HttpServletRequest request){
			HttpSession session = request.getSession();
			String level = (String)session.getAttribute("sessionLevel");
			if(level==null) level="";
			return level;
		}
	
	
	
	//세션로그인 ID 값
	public static String getSessionId(HttpServletRequest request){
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sessionId");
		return id;
	}
	
	
	/*
	//자료실 정보
	public static String getPdsDir(){
		String dir ="C:/jsl60_JSl/project_JYJ/web_homepage_jsl/WebContent/attach/pds/";
		return dir;
	}
	*/
	//자료실 정보
		public static String getNoticeDir(HttpServletRequest request){
			String attachDir=request.getSession().getServletContext().getRealPath("/")+"4_community\\Notice_image";
			return attachDir;
		}
		public static String getNewsDir(){
			String dir ="C:/jsl60_JSl/project_JYJ/servlet_homepage_bike/WebContent/attach/news/";
			return dir;
		}
		public static String getFileDir() {
			String dir = "C:/jsl60_JSl/project_JYJ/servlet_homepage_bike/WebContent/attach/filedownloda/";
			return dir;
		}
		public static String getProDir(HttpServletRequest request) {
			//String dir = "C:/jsl60_JSl/project_JYJ/servlet_homepage_bike/WebContent/attach/product/";
			String attachDir=request.getSession().getServletContext().getRealPath("/")+"attach/product";
			return attachDir;
		}
		
	
	
	//오늘날짜
	public static String getToday(){
		Date time = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		String today = format1.format(time);
		return today;
	}
	
	// 오늘 날짜 시분초 
	public static String getTodayTime(){
		Date time = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = format.format(time);
		return today;
	}	

	// 페이지 설정
		public static String pageListPost(int current_page,int total_page, int pageNumber_count){
			int pagenumber;    //화면에 보여질 페이지 인덱스수
			int startpage;     //화면에 보여질 시작 페이지 번호
			int endpage;       //화면에 보여질 마지막 페이지 번호
			int curpage;       //이동하고자 하는 페이지 번호
			
			String strList=""; //리턴될 페이지 인덱스 리스트

			pagenumber = pageNumber_count;   //한 화면의 페이지 인덱스수
			
			//시작 페이지 번호 구하기
			startpage = ((current_page - 1)/ pagenumber) * pagenumber + 1;
			//마지막 페이지 번호 구하기
			endpage = (((startpage -1) + pagenumber) / pagenumber)*pagenumber;
			//총페이지수가 계산된 마지막 페이지 번호보다 작을 경우
			//총페이지수가 마지막 페이지 번호가 됨
			
			if(total_page <= endpage)  endpage = total_page;
						
			//첫번째 페이지 인덱스 화면이 아닌경우
			if(current_page > pagenumber){
				curpage = startpage -1;  //시작페이지 번호보다 1적은 페이지로 이동
				strList = strList +"<a href=javascript:goPage('"+curpage+"') ><i class='fa fa-angle-double-left'></i></a>";
			}
							
			//시작페이지 번호부터 마지막 페이지 번호까지 화면에 표시
			curpage = startpage;
			while(curpage <= endpage){
				if(curpage == current_page){
					strList = strList +"<a class='active'>"+current_page+"</a>";
				} else {
					strList = strList +"<a href=javascript:goPage('"+curpage+"')>"+curpage+"</a>";
				}
				curpage++;
			}
			//뒤에 페이지가 더 있는 경우
			if(total_page > endpage){
				curpage = endpage+1;
				strList = strList + "<a href=javascript:goPage('"+curpage+"') ><i class='fa fa-angle-double-right'></i></a>";
			}
			return strList;
		}
		
		
}
