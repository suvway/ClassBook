package sist.com.aop.basic3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AopMain {

	public static void main(String[] args) {
		ApplicationContext context = new FileSystemXmlApplicationContext("src/main/java/sist/com/aop/basic3/aop.xml");
		Search search=(Search)context.getBean("adminSearchImp");//component로 빈을 주입했을 때 소문자로 시작해야함
		//search.domSax();
		search.domSax();
	}

}
