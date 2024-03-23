package forestDto;

public class MemberDto {

	private String id,name,password,area,address,mobile_1,mobile_2,mobile_3,gender,
				   hobby_travel,hobby_reading,hobby_sport,reg_date,update_date,exit_date,
				   exit_gubun,password_length;
	
	
	
	
	//관리자 상세보기
	public MemberDto(String id, String name, String password, String area, String address, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sport, String reg_date, String update_date, String exit_date, String exit_gubun,
			String password_length) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.area = area;
		this.address = address;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sport = hobby_sport;
		this.reg_date = reg_date;
		this.update_date = update_date;
		this.exit_date = exit_date;
		this.exit_gubun = exit_gubun;
		this.password_length = password_length;
	}
	public MemberDto(String id, String name, String area, String mobile_1, String mobile_2, String mobile_3,
			String gender, String reg_date, String exit_gubun) {
		super();
		this.id = id;
		this.name = name;
		this.area = area;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.reg_date = reg_date;
		this.exit_gubun = exit_gubun;
	}
	//수정용
	public MemberDto(String id, String name, String area, String address, String mobile_1, String mobile_2,
			String mobile_3, String gender, String hobby_travel, String hobby_reading, String hobby_sport,
			String update_date) {
		super();
		this.id = id;
		this.name = name;
		this.area = area;
		this.address = address;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sport = hobby_sport;
		this.update_date = update_date;
	}
	//회원가입 회원 조회
	public MemberDto(String id, String name, String password, String area, String address, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sport, String reg_date,String update_date, String password_length) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.area = area;
		this.address = address;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sport = hobby_sport;
		this.reg_date = reg_date;
		this.update_date = update_date;
		this.password_length = password_length;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getArea() {
		return area;
	}
	public String getAddress() {
		return address;
	}
	public String getMobile_1() {
		return mobile_1;
	}
	public String getMobile_2() {
		return mobile_2;
	}
	public String getMobile_3() {
		return mobile_3;
	}
	public String getGender() {
		return gender;
	}
	public String getHobby_travel() {
		return hobby_travel;
	}
	public String getHobby_reading() {
		return hobby_reading;
	}
	public String getHobby_sport() {
		return hobby_sport;
	}
	public String getReg_date() {
		return reg_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public String getExit_date() {
		return exit_date;
	}
	public String getExit_gubun() {
		return exit_gubun;
	}
	public String getPassword_length() {
		return password_length;
	}
	
	
	
}
