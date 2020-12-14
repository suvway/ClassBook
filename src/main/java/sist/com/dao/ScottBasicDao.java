package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.app.dto.EmpBean;

@Repository
public class ScottBasicDao extends SqlSessionDaoSupport {
   
   @Inject
   public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
      // TODO Auto-generated method stub
      super.setSqlSessionFactory(sqlSessionFactory);
   }
   
   public List<EmpBean>selectSqlEmp(HashMap<String, Object>map){
      return this.getSqlSession().selectList("selectSqlEmp",map);
   }
   
   public List<EmpBean>selectSqlEmpCheckBox(HashMap<String, String[]> map){
      return this.getSqlSession().selectList("selectSqlEmpCheckBox",map);
   }
   
   public void updateEmpAction(EmpBean bean) {
	   this.getSqlSession().update("updateEmpAction",bean);
   }

}