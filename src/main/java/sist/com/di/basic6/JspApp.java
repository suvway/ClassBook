package sist.com.di.basic6;

public class JspApp {
	private String scriptlet;
	private String baseObject;
	private String servlet;
	private String actionTag;
	public JspApp(String scriptlet, String baseObject, String servlet, String actionTag) {
		super();
		this.scriptlet = scriptlet;
		this.baseObject = baseObject;
		this.servlet = servlet;
		this.actionTag = actionTag;
	}
	public JspApp() {
		super();
	}
	public String getScriptlet() {
		return scriptlet;
	}
	public void setScriptlet(String scriptlet) {
		this.scriptlet = scriptlet;
	}
	public String getBaseObject() {
		return baseObject;
	}
	public void setBaseObject(String baseObject) {
		this.baseObject = baseObject;
	}
	public String getServlet() {
		return servlet;
	}
	public void setServlet(String servlet) {
		this.servlet = servlet;
	}
	public String getActionTag() {
		return actionTag;
	}
	public void setActionTag(String actionTag) {
		this.actionTag = actionTag;
	}
	@Override
	public String toString() {
		return "JspApp [scriptlet=" + scriptlet + ", baseObject=" + baseObject + ", servlet=" + servlet + ", actionTag="
				+ actionTag + "]";
	}
	
	
}
