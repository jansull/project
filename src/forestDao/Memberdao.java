package forestDao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DBConnection;
import forestDto.MemberDto;

public class Memberdao {
	Connection			con	= null;
	PreparedStatement 	ps 	= null;
	ResultSet 			rs	= null;
	
	
	
	//페이지 설정
	public int getTotalCount(String select,String search) {
		int count=0;
		String query="select count(*)as count\r\n" + 
				"from home_조영재_member_bike\r\n" + 
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
	
	
	
	//회원 목록 관리자
	public List<MemberDto> getMemberList(String select,String search ,int start,int end){
		List<MemberDto> dtos = new ArrayList<>();
		String query="select * from(\r\n" + 
				"    select rownum as rnum, tbl.*\r\n" + 
				"        from("+ 
				"select id,name,decode(area,'02','서울','042','대전','051','부산','053','대구')as area,\r\n" + 
				"        mobile_1,mobile_2,mobile_3,\r\n" + 
				"        decode(gender,'f','여','m','남')as gender,\r\n" + 
				"        to_char(reg_date,'yyyy-MM-dd')as reg_date,\r\n" + 
				"        decode(exit_gubun,'n','탈퇴')as exit_gubun\r\n" + 
				" from home_조영재_member_bike\r\n" + 
				" where "+select+" like '%"+search+"%'"+
				" order by reg_date desc"+
				") tbl)\r\n" + 
				"where rnum >="+start+" and rnum <= "+end+"";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				String id 			= rs.getString("id");
				String name 		= rs.getString("name");
				String area 		= rs.getString("area");
				String mobile_1 	= rs.getString("mobile_1");
				String mobile_2 	= rs.getString("mobile_2");
				String mobile_3 	= rs.getString("mobile_3");
				String gender 		= rs.getString("gender");
				String reg_date 	= rs.getString("reg_date");
				String exit_gubun 	= rs.getString("exit_gubun");
				MemberDto dto = new MemberDto(id, name, area, mobile_1, mobile_2, mobile_3, gender, reg_date, exit_gubun);
				dtos.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("memberDelete()오류"+query);
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		
		
		return dtos;
	}
	
	
	//회원탈퇴
	public int memberExit(String id, String exit_date) {
		int result=0;
		String query="update home_조영재_member_bike\r\n" + 
				"set exit_gubun='n',\r\n" + 
				"    exit_date = to_date('"+exit_date+"',\r\n" + 
				"                        'yyyy-mm-dd hh24:mi:ss')\r\n" + 
				"where id='"+id+"'";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			result=ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("memberDelete()오류"+query);
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	
	//새로운 비밀번호
	public int memberPasswordSave(String id, String newPw ,int len) {
		int result=0;
		String query="update home_조영재_member_bike\r\n" + 
				"set password='"+newPw+"',\r\n" + 
				"    password_length='"+len+"'\r\n" + 
				"where id='"+id+"'";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			result=ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("memberPasswordSave()오류"+query);
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}
	
	
	//수정
	public int memberUpdate(MemberDto dto) {
		int result=0;
		String query="update home_조영재_member_bike\r\n" + 
				"set name='"+dto.getName()+"',\r\n" + 
				"    area='"+dto.getArea()+"',\r\n" + 
				"    address='"+dto.getAddress()+"',\r\n" + 
				"    mobile_1='"+dto.getMobile_1()+"',\r\n" + 
				"    mobile_2='"+dto.getMobile_2()+"',\r\n" + 
				"    mobile_3='"+dto.getMobile_3()+"',\r\n" + 
				"    gender='"+dto.getGender()+"',\r\n" + 
				"    hobby_travel='"+dto.getHobby_travel()+"',\r\n" + 
				"    hobby_reading='"+dto.getHobby_reading()+"',\r\n" + 
				"    hobby_sport='"+dto.getHobby_sport()+"',\r\n" + 
				"    update_date=to_date('"+dto.getUpdate_date()+"','yyyy-mm-dd hh24:mi:ss')\r\n" + 
				"where id='"+dto.getId()+"'";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			result=ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return result;
	}
	//pw 중복체크
	public int checkPassword(String id, String pw) {
		int count=0;
		String query="select count(*)as count\r\n" + 
				"from home_조영재_member_bike\r\n" + 
				"where id='"+id+"' \r\n" + 
				"and password='"+pw+"'";
		
		 try {
				con = DBConnection.getConnection();
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();
				if(rs.next()) {
					count=rs.getInt("count");
				}
			}catch(Exception e) {
				System.out.println("checkPassword()오류"+query);
				e.printStackTrace();
			}finally {
				DBConnection.closeDB(con, ps, rs);
			}
		
		
		return count;
	}
	
	//id 중복체크
	public int checkId(String id) {
		int count=0;
	 String query ="select count(*) as count \r\n" + 
	 		"form admin_id \r\n" + 
	 		"where id='"+id+"'";
	 try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			if(rs.next()) {
				count=rs.getInt("count");
			}
		}catch(Exception e) {
			System.out.println("checkid()오류");
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return count;
		
		
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

    //회원가입
	public int memberSave(MemberDto dto) {
		int result=0;
		String query="insert into home_조영재_member_bike\r\n" + 
				"(id,name,password,area,address,mobile_1,mobile_2,mobile_3,gender,\r\n" + 
				"				   hobby_travel,hobby_reading,hobby_sport,reg_date,\r\n" + 
				"				   password_length)\r\n" + 
				"values\r\n" + 
				"('"+dto.getId()+"','"+dto.getName()+"','"+dto.getPassword()+"','"+dto.getArea()+"','"+dto.getAddress()+"','"+dto.getMobile_1()+"','"+dto.getMobile_2()+"','"+dto.getMobile_3()+"','"+dto.getGender()+"','"+dto.getHobby_travel()+"','"+dto.getHobby_reading()+"','"+dto.getHobby_sport()+"',\r\n" + 
				"to_date('"+dto.getReg_date()+"','yyyy-mm-dd hh24:mi:ss'),\r\n" + 
				"'"+dto.getPassword_length()+"')";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			result = ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("memberSave()오류");
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return result;
	}

	//로그인 체크
	public String getLoginInfo(String id, String pw) {
		String name = "";
		String query="select name\r\n" + 
				"from admin_id\r\n" + 
				"where id ='"+id+"'\r\n" + 
				"and password ='"+pw+"'";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			if(rs.next()) {
				name = rs.getString("name");
			}
		}catch(Exception e) {
			System.out.println("getLoginInfo()오류"+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		return name;
	}


	public MemberDto getMemberView(String id) {
		MemberDto dto = null;
		
		String query="select              id,name,password,area,address,mobile_1,mobile_2,mobile_3,gender,\r\n" + 
				"				   hobby_travel,hobby_reading,hobby_sport,\r\n" + 
				"                   to_char(reg_date,'yyyy-mm-dd hh24:mi:ss')as reg_date,\r\n" + 
				"                   to_char(update_date,'yyyy-mm-dd hh24:mi:ss')as update_date,\r\n" + 
				"                   to_char(exit_date,'yyyy-mm-dd hh24:mi:ss')as exit_date,\r\n" + 
				"				   exit_gubun,\r\n" + 
				"                   password_length  "+
				"	from home_조영재_member_bike\r\n" + 
				"where id ='"+id+"'";
		System.out.println(query);
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			if(rs.next()) {
				String name=			rs.getString("name");
				String password=		rs.getString("password");
				String area=			rs.getString("area");
				String address=			rs.getString("address");
				String mobile_1=		rs.getString("mobile_1");
				String mobile_2=		rs.getString("mobile_2");
				String mobile_3=		rs.getString("mobile_3");
				String gender=			rs.getString("gender");
				String hobby_travel=	rs.getString("hobby_travel");
				String hobby_reading=	rs.getString("hobby_reading");
				String hobby_sport=		rs.getString("hobby_sport");
				String reg_date=		rs.getString("reg_date");
				String update_date=		rs.getString("update_date");
				String exit_date=		rs.getString("exit_date");
				String exit_gubun=		rs.getString("exit_gubun");
				String password_length=	rs.getString("password_length");
				
				dto = new MemberDto(id, name, password, area, address, mobile_1, mobile_2, mobile_3,
						gender, hobby_travel, hobby_reading, hobby_sport, reg_date, update_date,exit_date,
						exit_gubun,password_length);
			}
		}catch(Exception e) {
			System.out.println("getMemberView()오류"+query);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return dto;
	}


	
	




	
}
