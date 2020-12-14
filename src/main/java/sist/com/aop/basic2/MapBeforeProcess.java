package sist.com.aop.basic2;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.springframework.aop.MethodBeforeAdvice;		//핵심코드가 일어나기전에 일어나는 애 

public class MapBeforeProcess implements MethodBeforeAdvice {

	@Override
	public void before(Method method, Object[] args, Object target) throws Throwable {
		// TODO Auto-generated method stub

		Marine marine = (Marine)target;
		if(marine.getCommand() instanceof CommandAttack) {
			System.out.println("지형 탐사...MethodBeforeAdvice");
		}
		
	}
	

}
