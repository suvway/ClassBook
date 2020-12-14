package sist.com.di.basic6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppMain {
	public static void main(String[] args) {
		ApplicationContext context=new AnnotationConfigApplicationContext(ConfigDemo.class);//bean을 가져온다. class이름을 써줌
		//System.out.println(context.getBean("servletApp"));//bean에 이름안주면 메소드명이 bean이름이 되고 name주면 그걸 부르면된다.
		System.out.println(context.getBean("book2"));
	}
}
