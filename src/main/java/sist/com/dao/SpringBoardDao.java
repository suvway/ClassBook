package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;

import sist.com.app.dto.BootBoardBean;
import sist.com.app.dto.SpringMember;

//@Repository(value="memberDao")
public class SpringBoardDao extends SqlSessionDaoSupport{

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	public void insertMember(SpringMember springMember) {
		this.getSqlSession().insert("insertMember", springMember);
	}
	public List<SpringMember> selectMember() {
		List<SpringMember> list=  this.getSqlSession().selectList("selectMember");
		return list;
	}
	public SpringMember springMemberInfo(int no) {
		return this.getSqlSession().selectOne("springMemberInfo", no);
	}
	public void springMemberDelete(int no) {
		this.getSqlSession().delete("springMemberDelete",no);
	}
	public void springMemberModify(SpringMember member) {
		this.getSqlSession().update("springMemberModify", member);
	}
	public boolean loginBootAction(String id,String password) {
		String result=this.getSqlSession().selectOne("loginBootAction",id);
		return result!=null&&result.equals(password)?true:false;
	}
	public void BootInsertAction(BootBoardBean bean) {
		this.getSqlSession().insert("BootInsertAction", bean);
	}
	public List<BootBoardBean>selectBootBoard(){
	    return this.getSqlSession().selectList("selectBootBoard");
	}
	public BootBoardBean infoSelectAction(int no) {
		return this.getSqlSession().selectOne("infoSelectAction",no);
		
	}
	public void updateHitAction(int no) {
		this.getSqlSession().update("updateHitAction",no);
	}
	public void BootUpdateAction(BootBoardBean bean) {
		this.getSqlSession().update("BootUpdateAction",bean);
	}
}
