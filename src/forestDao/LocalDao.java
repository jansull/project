package forestDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.DBConnection;
import forestDto.LocalDto;

public class LocalDao {
	Connection con = null;
	PreparedStatement ps =null;
	ResultSet rs =null;
	
	//페이지 설정
			public int getTotalCount(String select,String search) {
				int count=0;
				String query="select count(*)as count\r\n" + 
						"from local_food\r\n" + 
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
			public int LocalSave(LocalDto dto) {
				int result=0;
				String sql = "insert into local_food\r\n" + 
						"set no='"+dto.getNo()+"',\r\n" + 
						"    title='"+dto.getTitle()+"',\r\n" + 
						"    admin='"+dto.getAdmin()+"',\r\n" + 
						"    reg_date='"+dto.getReg_date()+"',\r\n" + 
						"    content='"+dto.getContent()+"',\r\n" + 
						"    img_attach_name='"+dto.getAttach()+"'";
				try {
					con = DBConnection.getConnection();
					ps = con.prepareStatement(sql);
					result = ps.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("LocalSave오류"+sql);
				}finally {
					DBConnection.closeDB(con, ps, rs);
				}
				return result;
			}
			// 맥스 번호
			public int LocalMaxNo() {
				int result =0;
				String sql="SELECT IFNULL(MAX(no), 0) AS max_no\r\n" + 
						"FROM local_food";
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
					System.out.println("LocalMaxNo오류");
				}finally {
					DBConnection.closeDB(con, ps, rs);
				}
				return result;
			}
			//조회수
			public int setHitCount(String no) {
				int result=0;
				String query ="update local_food\r\n" + 
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
			public LocalDto LocalView(String no) {
				LocalDto dto = null;
				String sql ="select *\r\n" + 
						"from local_food\r\n" + 
						"where no='"+no+"'";
				
				try {
					con = DBConnection.getConnection();
					ps = con.prepareStatement(sql);
					rs = ps.executeQuery();
					if(rs.next()) {
						String  nos = rs.getString("no");
						int noo = Integer.parseInt(nos);
						String  title = rs.getString("title");
						String  attach_1 = rs.getString("img_attach_name");
						String  content = rs.getString("content");
						String  reg_date = rs.getString("reg_date");
						String  admin = rs.getString("admin");
						String  hit = rs.getString("hit");
						int hitt = Integer.parseInt(hit);
						dto = new LocalDto(noo, hitt, title, content, attach_1, admin, reg_date);
					}
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("LocalView오류"+sql);
				}finally {
					DBConnection.closeDB(con, ps, rs);
				}
				return dto;
			}
			//조회_list
			public ArrayList<LocalDto> LocalList(String search,String select,int start,int end){
				ArrayList<LocalDto> dtos  = new ArrayList<LocalDto>();
				String sql ="select  *\r\n" + 
						"from local_food\r\n" + 
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
						String  attach_1 = rs.getString("img_attach_name");
						String  content = rs.getString("content");
						String  reg_date = rs.getString("reg_date");
						String  admin = rs.getString("admin");
						String  hit = rs.getString("hit");
						int hitt = Integer.parseInt(hit);
						LocalDto dao = new  LocalDto(noo, hitt, title, content, attach_1, admin, reg_date);
						dtos.add(dao);
					}
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("LocalList오류");
				}finally {
					DBConnection.closeDB(con, ps, rs);
				}
				return dtos;
				
			}
}
