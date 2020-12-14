package sist.com.di.basic;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class PersonMain {
	
	
	public static void main(String[] args) {
		ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic/personDI.xml");
		/*((Person)context.getBean("person1")).setName("ȿ��");//�̰� ������Ÿ��
		System.out.println(((Person)context.getBean("person1")));
		((Person)context.getBean("person2")).setName("ȿ��");//�̰� �̱��� 
		System.out.println(((Person)context.getBean("person2")));
		//�̱������� �����Ѱ� �ϳ��� ��� ���� ������ setname�� �ڷᰡ ���Ѵ�.
		//prototype�� �θ� ������ ���� �����ϱ� ������ setname�� person1�� sysout�� person1�� �ٸ� ��ü�� �ٸ���.
		//�׷��� ���� �����ڰ� 3�� ������.
		
		Person person2=(Person)context.getBean("person2");
		person2.initPerson();*/
		
		Store store=(Store)context.getBean("store1");
		
		/*for(Book i:store.getSet()) {
			System.out.println(i.getTitle());
		}
		for(Book i:store.getList()) {
			System.out.println(i.getPublisher());
		}*/
		
		//System.out.println(store.getMap());
		System.out.println(store.getProperties());//properties는 순서가 없다.
		Iterator<Entry<Integer, Book>>ir= store.getMap().entrySet().iterator();
		while(ir.hasNext()) {
			Entry<Integer, Book>en=ir.next();
			System.out.println(en.getKey()+" : "+en.getValue());
		}
		
		
	}
}

