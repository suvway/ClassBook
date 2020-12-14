package sist.com.di.basic5;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;
@Component
public class Store {
	private Product product;
	
	@PostConstruct//생성전에 호출
	public void initStore() {
		System.out.println("initStore");
	}
	@PreDestroy//다 끝나고 호출
	public void preDestroyStore() {
		System.out.println("DestroyStore");
	}
	public Product getProduct() {
		return product;
	}
	@Required
	@Resource
	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Store [product=" + product + "]";
	}
	
	
}
