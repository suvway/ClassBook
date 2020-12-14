package sist.com.aop.basic3;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component
public class AdminSearchImp extends Object implements Search{//컨트롤러가 상속을 받으면 종속적이게 된다. 즉 다른 객체와 결합이 어려워짐
	
	@Inject//inject를 통해서 di를 구현해준다.
	private FileProcess file;
	
	@Override
	public void fileSearch() {
		// TODO Auto-generated method stub
		System.out.println("fileSearch");
		file.fileProperties();//주입 받은 객체를 통해서 메소드를 구현한다.
		file.fileValidate();
	}

	@Override
	public void xmlParsing() {
		System.out.println("xmlParsing");
		// TODO Auto-generated method stub
		file.fileValidate();
		
	}

	@Override
	public void domSax() {
		System.out.println("domSax");
		// TODO Auto-generated method stub
		/*int rs=10/0;
		System.out.println(rs);*/
		file.fileProperties();//주입 받은 객체를 통해서 메소드를 구현한다.
		
	}
	

}
