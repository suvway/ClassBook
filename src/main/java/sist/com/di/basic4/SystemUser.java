package sist.com.di.basic4;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;

public class SystemUser {
	//@Resource(name="oracleDb") 필드에서 가능
	//@Autowire필드에서 가능
	private Dbms dbms;

	
	public SystemUser() {
		super();
	} 
	//@Autowired 생성자 가능 
	//@Resource(name="oracleDb") 생성자 불가능
	public SystemUser(Dbms dbms) {
		super();
		this.dbms = dbms;
	}

	public Dbms getDbms() {
		return dbms;
	}
	//@Required
	@Resource(name="oracleDb")//하나일 때는 안써줘도 들어간다.
	public void setDbms(Dbms dbms) {
		this.dbms = dbms;
	}

	@Override
	public String toString() {
		return "SystemUser [dbms=" + dbms + "]";
	}
	
	
}
