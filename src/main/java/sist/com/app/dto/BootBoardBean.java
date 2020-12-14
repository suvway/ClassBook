package sist.com.app.dto;

public class BootBoardBean {
	private int no;
	private String id;
	private String name;
	private String pw;
	private String subject;
	private String contents;
	private int hit;
	private String fileName;
	private String regdate;
	
	public BootBoardBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public BootBoardBean(int no, String id, String name, String pw, String subject, String contents, int hit,
			String fileName, String regdate) {
		super();
		this.no = no;
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.subject = subject;
		this.contents = contents;
		this.hit = hit;
		this.fileName = fileName;
		this.regdate = regdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BootBoardBean [no=" + no + ", id=" + id + ", name=" + name + ", pw=" + pw + ", subject=" + subject
				+ ", contents=" + contents + ", hit=" + hit + ", fileName=" + fileName + ", regdate=" + regdate + "]";
	}
	
	
}
