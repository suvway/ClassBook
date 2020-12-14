package sist.com.di.basic5;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class DbServer {
	@Value("${m.serverName}")
	private String serverName;
	@Value("${m.serverUrl}")
	private String serverUrl;
	@Value("${m.port}")
	private int port;
	@Value("${m.account}")
	private String account;
	@Value("${m.password}")
	private String password;
	
	
	public String getServerName() {
		return serverName;
	}
	public void setServerName(String serverName) {
		this.serverName = serverName;
	}
	public String getServerUrl() {
		return serverUrl;
	}
	public void setServerUrl(String serverUrl) {
		this.serverUrl = serverUrl;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "DbServer [serverName=" + serverName + ", serverUrl=" + serverUrl + ", port=" + port + ", account="
				+ account + ", password=" + password + "]";
	}
	
	
}
