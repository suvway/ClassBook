package sist.com.di.basic3;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class SystemActor {@Autowired//같은 타입을 알아서 채워준다. 같은 타입이 2개면 오류난다. 여기써도 된다. 생성자에도 써도된다.
	private Computer computer;
	private Computer computer2;

	public Computer getComputer() {
		return computer;
	}
	/*public Computer getComputer2() {
		return computer2;
	}
	@Required//null이면오류
	//@Autowired//같은 타입을 알아서 채워준다. 같은 타입이 2개면 오류난다.
	//@Qualifier(value="c1")
	public void setComputer(@Qualifier(value="c1")Computer computer,@Qualifier(value="c2")Computer computer2) {
		this.computer = computer;
		this.computer2 = computer2;
	}*/
	//@Required//메소드 있는데만 놓을 수 있다.
	@Resource(name="computer1")//생성자는 안된다.
	public void setComputer(Computer computer) {
		this.computer = computer;
	}
	@Override
	public String toString() {
		return "SystemActor [computer=" + computer + ", computer2=" + computer2 + "]";
	}

	
	
	
}
