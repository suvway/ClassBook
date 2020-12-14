package sist.com.app.dto;

public class ReplyBean {
	private int no;
	private String contents;
	private String id;
	private int step,ref,pnum,reply;
	private String img;
	private String regdate;
	private int infopk;
	private String job;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getInfopk() {
		return infopk;
	}
	public void setInfopk(int infopk) {
		this.infopk = infopk;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "ReplyBean [no=" + no + ", contents=" + contents + ", id=" + id + ", step=" + step + ", ref=" + ref
				+ ", pnum=" + pnum + ", reply=" + reply + ", img=" + img + ", regdate=" + regdate + ", infopk=" + infopk
				+ ", job=" + job + "]";
	}
	
}
