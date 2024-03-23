package forestDto;

public class Applydto {
	String no,title,write_name,apply_date,reserve_check,header_check;

	

	public Applydto(String no, String title, String write_name, String apply_date, String reserve_check,
			String header_check) {
		this.no = no;
		this.title = title;
		this.write_name = write_name;
		this.apply_date = apply_date;
		this.reserve_check = reserve_check;
		this.header_check = header_check;
	}

	public String getHeader_check() {
		return header_check;
	}

	public String getNo() {
		return no;
	}

	public String getTitle() {
		return title;
	}

	public String getWrite_name() {
		return write_name;
	}

	public String getApply_date() {
		return apply_date;
	}

	public String getReserve_check() {
		return reserve_check;
	}
	
	
	
	
}
