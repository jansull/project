package forestDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DBConnection;

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
	
}
