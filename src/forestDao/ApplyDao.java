package forestDao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.DBConnection;
import forestDto.Applydto;
import forestDto.Reserve_member;

public class ApplyDao {
	Connection con = null;
	PreparedStatement ps =null;
	ResultSet rs =null;

	
	
	
	
	//예약 확인 으로 바꾸기
	public int ChangeReservation(String no ,String check_value) {
		int result=0;
		String query="update forest_apply\r\n" + 
				"set reserve_check='"+check_value+"'\r\n" + 
				"where no='"+no+"'";
		
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(query);
			result = ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("ChangeReservation()오류 :"+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	//페이지 설정
	public int getTotalCount(String select,String search) {
		int count=0;
		String query="select count(*)as count\r\n" + 
				"from forest_apply\r\n" + 
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
	
	//게스글 삭제
	public int Apply_delete(String no) {
		int result=0;
				
	String query="delete from forest_apply\r\n" + 
			"where no ='"+no+"'";
	
	try {
		con = DBConnection.getConnection();
		ps  = con.prepareStatement(query);
		result = ps.executeUpdate();
	}catch(Exception e) {
		System.out.println("Apply_delete() 오류:"+query);
		e.printStackTrace();
	}finally {
		DBConnection.closeDB(con, ps, rs);
	}			
	return result;
		
	}
	//Apply페이지만
	public ArrayList<Applydto> Apply_getList(String search,String select,int start,int end){
		ArrayList<Applydto> dtos = new ArrayList<Applydto>();
		String sql="SELECT no, title, write_name, DATE_FORMAT(apply_date, '%Y-%m-%d') AS apply_date, reserve_check, header_check\r\n" + 
				"FROM forest_apply\r\n" + 
				"WHERE "+select+" LIKE '%"+search+"%' \r\n" + 
				"ORDER BY no DESC\r\n" + 
				"LIMIT "+start+", "+end+"";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				String no = rs.getString("no");
				String title = rs.getString("title");
				String write_name = rs.getString("write_name");
				String apply_date = rs.getString("apply_date");
				String reserve_check = rs.getString("reserve_check");
				String header_check = rs.getString("header_check");
				Applydto dto = new Applydto(no, title, write_name, apply_date, reserve_check, header_check);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dtos;
	}
	//정보 전부
	public Reserve_member getAllList(String no){
		Reserve_member dtos = null;
		String sql="select *\r\n" + 
				"    from forest_apply\r\n" + 
				"    where no='"+no+"'";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				int nos = rs.getInt("no");
				String header_check = rs.getString("header_check");
				String password = rs.getString("password");
				String title = rs.getString("title");
				String program_index = rs.getString("program_index");
				String program_name = rs.getString("program_name");
				String apply_date = rs.getString("apply_date");
				int kid_count = rs.getInt("kid_count");
				int teen_kid_count = rs.getInt("teen_kid_count");
				int elementary_count = rs.getInt("elementary_count");
				int adult_count = rs.getInt("adult_count");
				String write_name = rs.getString("write_name");
				String agency_name = rs.getString("agency_name");
				String tell_1 = rs.getString("tell_1");
				String tell_2 = rs.getString("tell_2");
				String tell_3 = rs.getString("tell_3");
				String email = rs.getString("email");
				String reserve_check = rs.getString("reserve_check");
				dtos = new Reserve_member(header_check, password, title, program_index, program_name, apply_date, write_name, agency_name, tell_1, tell_2, tell_3, email, reserve_check, nos, kid_count, teen_kid_count, elementary_count, adult_count);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return dtos;
	}
	public int Apply_wirte(Reserve_member dto) {
		int result=0;
		String sql ="insert into forest_apply\r\n" + 
				"set  no ='"+dto.getNo()+"',\r\n" + 
				"    header_check ='"+dto.getHeader_check()+"',\r\n" + 
				"    password ='"+dto.getPassword()+"',\r\n" + 
				"    title='"+dto.getTitle()+"',\r\n" + 
				"    program_index ='"+dto.getProgram_index()+"',\r\n" + 
				"    program_name ='"+dto.getProgram_name()+"',\r\n" + 
				"    apply_date ='"+dto.getApply_date()+"',\r\n" + 
				"    kid_count ='"+dto.getKid_count()+"',\r\n" + 
				"    teen_kid_count ='"+dto.getTeen_kid_count()+"',\r\n" + 
				"    elementary_count ='"+dto.getElementary_count()+"',\r\n" + 
				"    adult_count ='"+dto.getAdult_count()+"',\r\n" + 
				"    write_name ='"+dto.getWrite_name()+"',\r\n" + 
				"    agency_name ='"+dto.getAgency_name()+"',\r\n" + 
				"    tell_1 ='"+dto.getTell_1()+"',\r\n" + 
				"    tell_2 ='"+dto.getTell_2()+"',\r\n" + 
				"    tell_3 ='"+dto.getTell_3()+"',\r\n" + 
				"    email ='"+dto.getEmail()+"',\r\n" + 
				"    reserve_check ='"+"n"+"'";
		System.out.println(sql);
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			result=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("getMaxNo() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}	
		return result;
	}
	
	public int getMaxNo() {
		int no=0;
		
		String query="SELECT IFNULL(MAX(no), 0) AS no\r\n" + 
				"FROM forest_apply";
		
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(query);
			rs  = ps.executeQuery();
			if(rs.next()){
				int nos = rs.getInt("no");
				no=nos+1;
			}
		}catch(Exception e) {
			System.out.println("getMaxNo() 오류:"+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}			
		return no;
	}
	//비밀번호 암호화
    public String encryptSHA256(String value) throws NoSuchAlgorithmException{
        String encryptData ="";
        
        MessageDigest sha = MessageDigest.getInstance("SHA-256");
        sha.update(value.getBytes());
 
        byte[] digest = sha.digest();
        for (int i=0; i<digest.length; i++) {
            encryptData += Integer.toHexString(digest[i] &0xFF).toUpperCase();
        }
         
        return encryptData;
    }
  //비밀번호 체크
  	public String CheckPw(String no ,String pw) {
  		String name = "";
  		String query="SELECT write_name\r\n" + 
  				"FROM forest_apply\r\n" + 
  				"WHERE no = "+no+"\r\n" + 
  				"AND password = '"+pw+"'";
  		try {
  			con = DBConnection.getConnection();
  			ps = con.prepareStatement(query);
  			rs = ps.executeQuery();
  			if(rs.next()) {
  				name = rs.getString("write_name");
  			}
  		}catch(Exception e) {
  			System.out.println("CheckPw()오류"+query);
  			e.printStackTrace();
  		}finally {
  			DBConnection.closeDB(con, ps, rs);
  		}
  		return name;
  	}

	
}
