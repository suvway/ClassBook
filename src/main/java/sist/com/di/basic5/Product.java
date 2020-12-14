package sist.com.di.basic5;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(value="singleton")
public class Product {
	@Value(value="샘소나이트")
	private String productName;
	@Value(value="한국")
	private String productOrigin;
	@Value(value="50000")
	private int productPrice;
	@Value(value="2020/10//30")
	private String productDate;
	
	
	
	public Product() {
		super();
	}
	public Product(String productName, String productOrigin, int productPrice, String productDate) {
		super();
		this.productName = productName;
		this.productOrigin = productOrigin;
		this.productPrice = productPrice;
		this.productDate = productDate;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductOrigin() {
		return productOrigin;
	}
	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	@Override
	public String toString() {
		return "Product [productName=" + productName + ", productOrigin=" + productOrigin + ", productPrice="
				+ productPrice + ", productDate=" + productDate + "]";
	}
	
	
}
