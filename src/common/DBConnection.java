package common;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection(){
		 
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("mysql 드라이버 없음");
			e.printStackTrace();
		}
		String db_address="jdbc:mariadb://sunja537012.cafe24.com/sunja537012?serverTimezone=UTC";//나중에 수정해야함
		String db_user 	 = "sunja537012";
		String db_password = "gkftndlTek";
		
		try {
			con = DriverManager.getConnection(db_address, db_user, db_password);
		} catch (SQLException e) {
			System.out.println("DB 계정 설정 오류");
			e.printStackTrace();
		}
		return con;
	}
	public static void closeDB(Connection con,PreparedStatement ps,ResultSet rs){
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
			
		
		
	}
	
}
