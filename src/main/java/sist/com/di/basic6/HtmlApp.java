package sist.com.di.basic6;

public class HtmlApp {
	private String body;
	private String table;
	private String div;
	private int countPage;
	public HtmlApp(String body, String table, String div, int countPage) {
		super();
		this.body = body;
		this.table = table;
		this.div = div;
		this.countPage = countPage;
	}
	public HtmlApp() {
		super();
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getTable() {
		return table;
	}
	public void setTable(String table) {
		this.table = table;
	}
	public String getDiv() {
		return div;
	}
	public void setDiv(String div) {
		this.div = div;
	}
	public int getCountPage() {
		return countPage;
	}
	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}
	@Override
	public String toString() {
		return "HtmlApp [body=" + body + ", table=" + table + ", div=" + div + ", countPage=" + countPage + "]";
	}
	
}
