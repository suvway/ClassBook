package sist.com.dao;

import org.springframework.stereotype.Component;

@Component
public class ClientDao extends DaoAdapter{

	@Override
	public void select(int price) {
		// TODO Auto-generated method stub
		System.out.println("ClientDaoSelect");	
	}

	
	
}
