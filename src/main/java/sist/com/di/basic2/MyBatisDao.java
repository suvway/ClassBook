package sist.com.di.basic2;

public class MyBatisDao extends Object implements Dao{
	
	@Override
	public void select() {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoSELECT");
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoUPDATE");
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoDELETE");
	}
	
}
