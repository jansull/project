package forestDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.DBConnection;
import forestDto.GalleryDto;

public class GalleryDao {
	Connection con = null;
	PreparedStatement ps =null;
	ResultSet rs =null;
	
	
	public String getGalleryFirstImg() {
		String img=null;
		String sql="SELECT img_attach_name_1\r\n" + 
				"FROM gallery\r\n" + 
				"WHERE no = (SELECT MAX(no) FROM gallery)";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				img = rs.getString("img_attach_name_1");
			}
		}catch(Exception e) {
			System.out.println("getGalleryFirstImg()오류 :"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return img;
	}
	
	
	//페이지 설정
		public int getTotalCount(String select,String search) {
			int count=0;
			String query="select count(*)as count\r\n" + 
					"from notice\r\n" + 
					"where "+select+" like '%"+search+"%'";
			
			try {
				con = DBConnection.getConnection();
				ps  = con.prepareStatement(query);
				rs = ps.executeQuery();
				if(rs.next()) {
					count = rs.getInt("count");
				}
			}catch(Exception e) {
				System.out.println("gettotalCount()오류 :"+query);
				e.printStackTrace();
			}finally {
				DBConnection.closeDB(con, ps, rs);
			}
			return count;
		}
		
	
	//등록
	public int GallerySave(GalleryDto dto) {
		int result=0;
		String sql = "insert into gallery\r\n" + 
				"set no='"+dto.getNo()+"',\r\n" + 
				"    title='"+dto.getTitle()+"',\r\n" + 
				"    admin='"+dto.getReg_id()+"',\r\n" + 
				"    reg_date='"+dto.getReg_date()+"',\r\n" + 
				"    content='"+dto.getContent()+"',\r\n" + 
				"    img_attach_name_1='"+dto.getAttach_1()+"',\r\n" + 
				"    img_attach_name_2='"+dto.getAttach_2()+"',\r\n" + 
				"    img_attach_name_3='"+dto.getAttach_3()+"',\r\n" + 
				"    img_attach_name_4='"+dto.getAttach_4()+"',\r\n" + 
				"    img_attach_name_5='"+dto.getAttach_5()+"'";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("GallerySave오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	//조회_list
	public ArrayList<GalleryDto> GalleryList(String search,String select,int start,int end){
		ArrayList<GalleryDto> dtos  = new ArrayList<GalleryDto>();
		String sql ="select  *\r\n" + 
				"from gallery\r\n" + 
				"where "+select+" like '%"+search+"%'\r\n" + 
				"order by no desc \r\n" + 
				"limit "+start+","+end+"";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				String  no = rs.getString("no");
				int noo = Integer.parseInt(no);
				String  title = rs.getString("title");
				String  attach_1 = rs.getString("img_attach_name_1");
				String  attach_2 = rs.getString("img_attach_name_2");
				String  attach_3 = rs.getString("img_attach_name_3");
				String  attach_4 = rs.getString("img_attach_name_4");
				String  attach_5 = rs.getString("img_attach_name_5");
				String  content = rs.getString("content");
				String  reg_date = rs.getString("reg_date");
				String  admin = rs.getString("admin");
				String  hit = rs.getString("hit");
				int hitt = Integer.parseInt(hit);
				GalleryDto dao = new  GalleryDto(noo, hitt, title, content, attach_1, attach_2, attach_3, attach_4, attach_5, admin, reg_date);
				dtos.add(dao);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("GalleryList오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dtos;
		
	}
	// 맥스 번호
	public int GalleyMaxNo() {
		int result =0;
		String sql="SELECT IFNULL(MAX(no), 0) AS max_no\r\n" + 
				"FROM gallery";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				result = rs.getInt("max_no");
				result=result+1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("GalleyMaxNo오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	//조회수
	public int setHitCount(String no) {
		int result=0;
		String query ="update gallery\r\n" + 
				"set hit = hit + 1\r\n" + 
				"where no='"+no+"'";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(query);
			result = ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("setHitCount()오류 :"+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}		
		return result;
	}
	//view
	public GalleryDto GalleryView(String no) {
		GalleryDto dto = null;
		String sql ="select *\r\n" + 
				"from gallery\r\n" + 
				"where no='"+no+"'";
		
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				String  nos = rs.getString("no");
				int noo = Integer.parseInt(nos);
				String  title = rs.getString("title");
				String  attach_1 = rs.getString("img_attach_name_1");
				String  attach_2 = rs.getString("img_attach_name_2");
				String  attach_3 = rs.getString("img_attach_name_3");
				String  attach_4 = rs.getString("img_attach_name_4");
				String  attach_5 = rs.getString("img_attach_name_5");
				String  content = rs.getString("content");
				String  reg_date = rs.getString("reg_date");
				String  admin = rs.getString("admin");
				String  hit = rs.getString("hit");
				int hitt = Integer.parseInt(hit);
				dto = new GalleryDto(noo, hitt, title, content, attach_1, attach_2, attach_3, attach_4, attach_5, admin, reg_date);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("GalleryView오류"+sql);
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dto;
	}
}
