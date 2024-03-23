package forestDto;

public class LocalDto {
	int no,hit;
	String title,content,attach,admin,reg_date;
	
	
	
	public LocalDto(int no, int hit, String title, String content, String attach, String admin, String reg_date) {
		this.no = no;
		this.hit = hit;
		this.title = title;
		this.content = content;
		this.attach = attach;
		this.admin = admin;
		this.reg_date = reg_date;
	}
	public int getNo() {
		return no;
	}
	public int getHit() {
		return hit;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getAttach() {
		return attach;
	}
	public String getAdmin() {
		return admin;
	}
	public String getReg_date() {
		return reg_date;
	}
	
	
}
