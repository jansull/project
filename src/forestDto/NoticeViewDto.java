package forestDto;

public class NoticeViewDto {
public String no,title,admin,hit,reg_date,content,img_attach_name,attach_name;

	
	
	
	public NoticeViewDto(String no, String title, String admin, String hit, String reg_date, String content,
			String img_attach_name, String attach_name) {
		this.no = no;
		this.title = title;
		this.admin = admin;
		this.hit = hit;
		this.reg_date = reg_date;
		this.content = content;
		this.img_attach_name = img_attach_name;
		this.attach_name = attach_name;
	}




	public String getNo() {
		return no;
	}




	public String getTitle() {
		return title;
	}




	public String getAdmin() {
		return admin;
	}




	public String getHit() {
		return hit;
	}




	public String getReg_date() {
		return reg_date;
	}




	public String getContent() {
		return content;
	}




	public String getImg_attach_name() {
		return img_attach_name;
	}




	public String getAttach_name() {
		return attach_name;
	}
}
