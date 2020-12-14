package sist.com.di.basic3;

public class Computer {
	private String cpu;
	private int price;
	private String Maker;
	
	public Computer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Computer(String cpu, int price, String maker) {
		super();
		this.cpu = cpu;
		this.price = price;
		Maker = maker;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMaker() {
		return Maker;
	}
	public void setMaker(String maker) {
		Maker = maker;
	}

	@Override
	public String toString() {
		return "Computer [cpu=" + cpu + ", price=" + price + ", Maker=" + Maker + "]";
	}
	
	
}
