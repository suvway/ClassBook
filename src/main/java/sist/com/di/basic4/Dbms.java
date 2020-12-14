package sist.com.di.basic4;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component(value="oracleDb")
public class Dbms {
	@Value(value="211.63.70.100")
	private String url;
	@Value(value="tiger")
	private String password;
	@Value(value="mySQL")
	private String sqlName;
	@Value(value="50")
	private int connectionCount;
	public Dbms(String url, String password, String sqlName, int connectionCount) {
		super();
		this.url = url;
		this.password = password;
		this.sqlName = sqlName;
		this.connectionCount = connectionCount;
	}
	public Dbms() {
		super();
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSqlName() {
		return sqlName;
	}
	public void setSqlName(String sqlName) {
		this.sqlName = sqlName;
	}
	public int getConnectionCount() {
		return connectionCount;
	}
	public void setConnectionCount(int connectionCount) {
		this.connectionCount = connectionCount;
	}
	@Override
	public String toString() {
		return "Dbms [url=" + url + ", password=" + password + ", sqlName=" + sqlName + ", connectionCount="
				+ connectionCount + "]";
	}
	
	
}
