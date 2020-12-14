package sist.com.di.basic;

public class Person {
	private int age;
	private String name;
	private String addr;

	public Person() {
		System.out.println("Person()");
		// TODO Auto-generated constructor stub
	}

	public void initPerson() {
		System.out.println("initPerson");

	}

	public Person(int age, String name, String addr) {
		super();
		this.age = age;
		this.name = name;
		this.addr = addr;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "Person [age=" + age + ", name=" + name + ", addr=" + addr + "]";
	}

}
