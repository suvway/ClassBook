package sist.com.app.dto;

public class SpringMember {
	private int no;
	private String email;
	private String id;
	private String address;
	private String pwd;
	private String name;
	private String regdate;
	
	public SpringMember() {
		super();
	}

	public SpringMember(int no, String email, String id, String address, String pwd, String name, String regdate) {
		super();
		this.no = no;
		this.email = email;
		this.id = id;
		this.address = address;
		this.pwd = pwd;
		this.name = name;
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "SpringMember [no=" + no + ", email=" + email + ", id=" + id + ", address=" + address + ", pwd=" + pwd
				+ ", name=" + name + ", regdate=" + regdate + "]";
	}
	
	
	
}
