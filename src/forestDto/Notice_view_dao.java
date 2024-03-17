package forestDto;

public class Notice_view_dao {
	public String no,title,img,content,reg_date,user;

	public Notice_view_dao(String no, String title, String img, String content, String reg_date, String user) {
		this.no = no;
		this.title = title;
		this.img = img;
		this.content = content;
		this.reg_date = reg_date;
		this.user = user;
	}

	public String getNo() {
		return no;
	}

	public String getTitle() {
		return title;
	}

	public String getImg() {
		return img;
	}

	public String getContent() {
		return content;
	}

	public String getReg_date() {
		return reg_date;
	}

	public String getUser() {
		return user;
	}
	
}
