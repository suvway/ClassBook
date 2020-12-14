package sist.com.aop.basic1;

public class IBatisDao implements Dao{

	@Override
	public void insert(int data,int data2,String s) {
		// TODO Auto-generated method stub
		System.out.println("IBatisDaoinsert");
	}

	@Override
	public void select(String s,String s2) {
		// TODO Auto-generated method stub
		System.out.println("IBatisDaoselect");
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		System.out.println("IBatisDelete");
	}
	
	

}
