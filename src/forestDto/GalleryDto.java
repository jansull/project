package forestDto;

public class GalleryDto {
	int no,hit;
	String title,content,attach_1,attach_2,attach_3,attach_4,attach_5,reg_id,reg_date;
	public GalleryDto(int no, int hit, String title, String content, String attach_1, String attach_2, String attach_3,
			String attach_4, String attach_5, String reg_id, String reg_date) {
		this.no = no;
		this.hit = hit;
		this.title = title;
		this.content = content;
		this.attach_1 = attach_1;
		this.attach_2 = attach_2;
		this.attach_3 = attach_3;
		this.attach_4 = attach_4;
		this.attach_5 = attach_5;
		this.reg_id = reg_id;
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
	public String getAttach_1() {
		return attach_1;
	}
	public String getAttach_2() {
		return attach_2;
	}
	public String getAttach_3() {
		return attach_3;
	}
	public String getAttach_4() {
		return attach_4;
	}
	public String getAttach_5() {
		return attach_5;
	}
	public String getReg_id() {
		return reg_id;
	}
	public String getReg_date() {
		return reg_date;
	}
	
	
	
	
	
	
	
}
