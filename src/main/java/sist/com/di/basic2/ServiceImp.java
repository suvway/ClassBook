package sist.com.di.basic2;

public class ServiceImp implements Service{
	Dao dao;
	
	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	@Override
	public void finder() {
		// TODO Auto-generated method stub
		dao.select();
		System.out.println("finder");
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		dao.select();
		System.out.println("validate");
	}

	
}
