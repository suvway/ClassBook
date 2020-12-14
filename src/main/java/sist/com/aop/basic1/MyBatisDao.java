package sist.com.aop.basic1;

public class MyBatisDao implements Dao{

	@Override
	public void insert(int data,int data2,String s) {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoinsert");
		int rs=10/0;
	}

	@Override
	public void select(String s,String s2) {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoselect");
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		System.out.println("MyBatisDaoDelete");
	}
	
	
	
	

}
