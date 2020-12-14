package sist.com.di.basic6;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration//변환시켜준다.
@ImportResource({"sist/com/di/basic/personDI.xml"})
public class ConfigDemo {
	
	@Bean(name="jsp")//jspapp를 리턴하는 메소드를 bean으로 사용하게 해주는 어노테이션
	public JspApp getJspApp() {
		return new JspApp("jspscr","request","dispatcher","forwqrd");
	}
	@Bean
	public HtmlApp getHtmlApp() {
		HtmlApp h=new HtmlApp();
		h.setBody("tbody");
		h.setDiv("div#a");
		h.setTable("theadTable");
		h.setCountPage(100);
		return h;
	}
	@Bean(name="servletApp")
	public ServletApp getServletApp() {
		return new ServletApp(getJspApp(),getHtmlApp());
	}
}
