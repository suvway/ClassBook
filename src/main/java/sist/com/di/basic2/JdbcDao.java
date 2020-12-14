package sist.com.di.basic2;

public class JdbcDao implements Dao{
	
	
	
	@Override
	public void delete() {
		// TODO Auto-generated method stub
		System.out.println("jdbcDelete");
	}
	public void select() {
		System.out.println("jdbcSelect");
	}
	public void update() {
		System.out.println("jdbcUpdate");
	}
}
