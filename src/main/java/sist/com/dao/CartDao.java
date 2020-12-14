package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.app.dto.AdminProductBean;
import sist.com.app.dto.ReplyBean;

@Repository
public class CartDao extends SqlSessionDaoSupport {

	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public boolean adminLoginIdCheck(String id, String pw) {
		String dbPass = this.getSqlSession().selectOne("adminLoginIdCheck", id);
		return dbPass != null && dbPass.equals(pw);
	}

	public List<AdminProductBean> selectProduct(HashMap<String, Object> map) {
		return this.getSqlSession().selectList("selectProduct", map);
	}

	public void insertProductAdmin(AdminProductBean bean) {
		this.getSqlSession().insert("insertProductAdmin", bean);
	}

	public void adminProDelete(AdminProductBean bean) {
		this.getSqlSession().delete("adminProDelete", bean);
	}

	public AdminProductBean adminSelectInfo(int pk) {
		return this.getSqlSession().selectOne("adminSelectInfo", pk);
	}

	public void modifyProductAdmin(AdminProductBean bean) {
		this.getSqlSession().update("modifyProductAdmin", bean);
	}

	public List<AdminProductBean> clientSelect() {
		return this.getSqlSession().selectList("clientSelect");
	}
	public AdminProductBean clientInfoAction(int pk) {
		return this.getSqlSession().selectOne("clientInfoAction", pk);
	}
	public void testReplyInsert(ReplyBean bean) {
	      this.getSqlSession().insert("testReplyInsert", bean);
	   }
	public List<ReplyBean> testReplySelect() {
		return this.getSqlSession().selectList("testReplySelect");
	}
	public List<ReplyBean>infoReplySelect(int infopk){
	      return this.getSqlSession().selectList("infoReplySelect", infopk);
	   }   
	public void insertReplyView(ReplyBean bean) {
	      this.getSqlSession().insert("insertReplyView", bean);
	   }

}