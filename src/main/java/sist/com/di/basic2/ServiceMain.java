package sist.com.di.basic2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class ServiceMain {

	public static void main(String[] args) {
		ApplicationContext context= new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic2/Service.xml");
		Service service=(Service)context.getBean("service6");
		service.finder();
		
	}
}
