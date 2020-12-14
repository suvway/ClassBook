package sist.com.di.basic5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class webAppServer {
	@Autowired
	private DbServer dbServer;

	@Override
	public String toString() {
		return "webAppServer [dbServer=" + dbServer + "]";
	}
	
	
	
}
