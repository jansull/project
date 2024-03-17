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
	
	public int Notice_Save(String title,String img_attach,String content,String attach,String reg_id,String reg_date) {
		int result=0;
		String sql = "insert into test_write\r\n" + 
				"values\r\n" + 
				"('"+1+"','"+title+"','"+img_attach+"','"+content+"','"+reg_date+"','"+reg_id+"')";
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
	public ArrayList<Notice_view_dao> get_notice_view_list(){
		ArrayList<Notice_view_dao> dtos  = new ArrayList<Notice_view_dao>();
		String sql ="select  no,title,img,content,reg_date,user\r\n" + 
				"from test_write\r\n" + 
				";";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				String  no = rs.getString("no");
				String  title = rs.getString("title");
				String  img = rs.getString("img");
				String  content = rs.getString("content");
				String  reg_date = rs.getString("reg_date");
				String  user = rs.getString("user");
				Notice_view_dao dao = new Notice_view_dao(no, title, img, content, reg_date, user);
				dtos.add(dao);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Notice_Save오류");
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dtos;
		
	}
	
}
