package sist.com.aop.basic2;

import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;

/*afteradvice: 핵심코드가 에러간 ㅏ건 안나건 호출이됨
afterreturning  차이 알아보기*/

public class Medic implements AfterReturningAdvice{

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		// TODO Auto-generated method stub
		// 타겟 의 관점은 어드바이스에 따라 다름(what, when) 타겟이 있는곳은 join point / 핵심코드 객체가 마린이 되는 것이다. 
		Marine marine = (Marine)target;
		if(marine.getCommand() instanceof CommandAttack) {	//commanAttack 을 했을때만 명령 수행
			System.out.println("치료중...AfterReturningAdvice");
			
		}
	}

	
	
}
