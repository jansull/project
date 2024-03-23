package forestDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.DBConnection;
import forestDto.Notice_view_dao;

public class ForestDao {
	Connection con = null;
	PreparedStatement ps =null;
	ResultSet rs =null;
	
	
	//등록
	public int Notice_Save(int no,String title,String img_attach,String content,String attach,String reg_id,String reg_date) {
		int result=0;
		String sql = "insert into notice\r\n" + 
				"values\r\n" + 
				"('"+no+"','"+title+"','"+reg_id+"','"+0+"','"+reg_date+"','"+content+"','"+img_attach+"','"+attach+"')";
		System.out.println(sql);
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Notice_Save오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	//조회
	public ArrayList<Notice_view_dao> get_notice_view_list(){
		ArrayList<Notice_view_dao> dtos  = new ArrayList<Notice_view_dao>();
		String sql ="select  no,title,img_attach_name,content,reg_date,admin,hit,attach_name\r\n" + 
				"from notice";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				String  no = rs.getString("no");
				String  title = rs.getString("title");
				String  img_attach_name = rs.getString("img_attach_name");
				String  content = rs.getString("content");
				String  reg_date = rs.getString("reg_date");
				String  admin = rs.getString("admin");
				String  hit = rs.getString("hit");
				String  attach_name = rs.getString("attach_name");
				Notice_view_dao dao = new Notice_view_dao(no, title, admin, hit, reg_date, content, img_attach_name, attach_name);
				dtos.add(dao);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("get_notice_view_list오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dtos;
		
	}
	// 맥스 번호
	public int get_notice_max_no() {
		int result =0;
		String sql="SELECT IFNULL(MAX(no), 0) AS max_no\r\n" + 
				"FROM notice";
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
			System.out.println("get_notice_max_no오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	//조회수
	public int setHitCount(String no) {
		int result=0;
		String query ="update notice\r\n" + 
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
	
}
