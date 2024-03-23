package forestDto;

public class Reserve_member {
	String header_check,password,title,program_index,program_name,apply_date,write_name,agency_name,tell_1,tell_2,tell_3,email,reserve_check;
	int no,kid_count,teen_kid_count,elementary_count,adult_count;
	
	
	
	
	
	
	
	
	
	
	public Reserve_member(String header_check, String password, String title, String program_index, String program_name,
			String apply_date, String write_name, String agency_name, String tell_1, String tell_2, String tell_3,
			String email, String reserve_check, int no, int kid_count, int teen_kid_count, int elementary_count,
			int adult_count) {
		this.header_check = header_check;
		this.password = password;
		this.title = title;
		this.program_index = program_index;
		this.program_name = program_name;
		this.apply_date = apply_date;
		this.write_name = write_name;
		this.agency_name = agency_name;
		this.tell_1 = tell_1;
		this.tell_2 = tell_2;
		this.tell_3 = tell_3;
		this.email = email;
		this.reserve_check = reserve_check;
		this.no = no;
		this.kid_count = kid_count;
		this.teen_kid_count = teen_kid_count;
		this.elementary_count = elementary_count;
		this.adult_count = adult_count;
	}
	public Reserve_member(String header_check, String password, String title, String program_index, String program_name,
			String apply_date, String write_name, String agency_name, String tell_1, String tell_2, String tell_3,
			String email,  int no, int kid_count, int teen_kid_count, int elementary_count,
			int adult_count) {
		this.header_check = header_check;
		this.password = password;
		this.title = title;
		this.program_index = program_index;
		this.program_name = program_name;
		this.apply_date = apply_date;
		this.write_name = write_name;
		this.agency_name = agency_name;
		this.tell_1 = tell_1;
		this.tell_2 = tell_2;
		this.tell_3 = tell_3;
		this.email = email;
		this.no = no;
		this.kid_count = kid_count;
		this.teen_kid_count = teen_kid_count;
		this.elementary_count = elementary_count;
		this.adult_count = adult_count;
	}
	public String getHeader_check() {
		return header_check;
	}
	public String getPassword() {
		return password;
	}
	public String getTitle() {
		return title;
	}
	public String getProgram_index() {
		return program_index;
	}
	public String getProgram_name() {
		return program_name;
	}
	public String getApply_date() {
		return apply_date;
	}
	public String getWrite_name() {
		return write_name;
	}
	public String getAgency_name() {
		return agency_name;
	}
	public String getTell_1() {
		return tell_1;
	}
	public String getTell_2() {
		return tell_2;
	}
	public String getTell_3() {
		return tell_3;
	}
	public String getEmail() {
		return email;
	}
	public String getReserve_check() {
		return reserve_check;
	}
	public int getNo() {
		return no;
	}
	public int getKid_count() {
		return kid_count;
	}
	public int getTeen_kid_count() {
		return teen_kid_count;
	}
	public int getElementary_count() {
		return elementary_count;
	}
	public int getAdult_count() {
		return adult_count;
	}
	
	
	
	
	
}
