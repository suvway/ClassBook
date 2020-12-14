package sist.com.app.dto;

public class MvcTransactionBean {
	private int no;
	private String msg;
	private int cnt;
	
	
	public MvcTransactionBean() {
		super();
	}
	public MvcTransactionBean(int no, String msg, int cnt) {
		super();
		this.no = no;
		this.msg = msg;
		this.cnt = cnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "MvcTransactionBean [no=" + no + ", msg=" + msg + ", cnt=" + cnt + "]";
	}
	
	
}
