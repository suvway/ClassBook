package sist.com.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.app.dto.MvcTransactionBean;


@Repository
public class MvcTestDao extends SqlSessionDaoSupport{

	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public void insertUpdate(MvcTransactionBean bean) {
	      this.getSqlSession().insert("insertUpdate1",bean);
	      this.getSqlSession().update("insertUpdate2",bean);
	   }

	
}
