package sist.com.di.basic;

import java.util.List;
import java.util.Map;
import java.util.Properties;

public class Store {
	private List<Book>list;
	private List<Book>set;
	private Map<Integer, Book>map;
	private Properties properties;
	
	
	
	public Properties getProperties() {
		return properties;
	}

	public void setProperties(Properties properties) {
		this.properties = properties;
	}

	public Map<Integer, Book> getMap() {
		return map;
	}

	public void setMap(Map<Integer, Book> map) {
		this.map = map;
	}

	public List<Book> getSet() {
		return set;
	}

	public void setSet(List<Book> set) {
		this.set = set;
	}

	public List<Book> getList() {
		return list;
	}

	public void setList(List<Book> list) {
		this.list = list;
	}

	public Store(List<Book> list) {
		super();
		this.list = list;
	}

	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Store [list=" + list + "]";
	}
	
	
}
