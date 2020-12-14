package sist.com.di.basic3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class SystemMain {
	
	public static void main(String[] args) {
		ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic3/sys.xml");
		SystemActor sa=(SystemActor)context.getBean("sysactor");
		System.out.println(sa);
	}
}

