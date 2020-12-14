package sist.com.di.basic6;

public class ServletApp {
	private JspApp jspApp;
	private HtmlApp htmlApp;
	
	
	
	@Override
	public String toString() {
		return "ServletApp [jspApp=" + jspApp + ", htmlApp=" + htmlApp + "]";
	}
	public ServletApp() {
		super();
	}
	public ServletApp(JspApp jspApp, HtmlApp htmlApp) {
		super();
		this.jspApp = jspApp;
		this.htmlApp = htmlApp;
	}
	public JspApp getJspApp() {
		return jspApp;
	}
	public void setJspApp(JspApp jspApp) {
		this.jspApp = jspApp;
	}
	public HtmlApp getHtmlApp() {
		return htmlApp;
	}
	public void setHtmlApp(HtmlApp htmlApp) {
		this.htmlApp = htmlApp;
	}
	
	
}
