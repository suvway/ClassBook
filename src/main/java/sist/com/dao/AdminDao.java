package sist.com.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component(value = "adminDao")
public class AdminDao extends SqlSessionDaoSupport {
		
	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void select() {
		System.out.println("AdminDaoSelect");
		// TODO Auto-generated method stub
		new DaoAdapter() {

			@Override
			public void select() {
				// TODO Auto-generated method stub
				System.out.println("AdminDaoSelect" + AdminDao.this.getSqlSession());
			}

		}.select();
	}

}
