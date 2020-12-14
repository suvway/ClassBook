package sist.com.aop.basic3;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectProcess {
	/*//비포 뒤에 들어가는게 타겟이 되는거라고 생각한다. 타겟(=핵심로직)
	@Before("execution(public * sist.com.aop.basic3.Search*.*(..) )") //public "*"은 어떤 반환값을 지정할 수 있음. 
	//search 클래스가 실행될 때 뿌려준다고 생각하자. (..)파라미터임
	public void dataAttributeSearch(JoinPoint joinPoint) {
		System.out.println("dataAttributeSearch");//공통단
		//개별 메소드 별로 실행 되어야한다->시그니쳐로 구분//lang패키치
		Signature signature=joinPoint.getSignature();
		String methodName=signature.getName();
		if(methodName.equals("fileSearch")) {
			System.out.println("BeforeFileLinkProcess");
		}else if(methodName.equals("xmlParsing")) {
			System.out.println("BeforeXmlLinkProcess");
		}else if(methodName.equals("domSax")) {
			System.out.println("BeforeDomLinkProcess");
		}
	}
	
	@After("execution(public * sist.com.aop.basic3.Search*.*(..) )")
	public void afterAddMsg() {//에러가 나던말던 우선 실행된다
		System.out.println("why..?");
	}
	@AfterReturning("execution(public * sist.com.aop.basic3.Search*.*(..) )")
	public void afterReturnAddMsg() {//에러가 없이 정상적으로 끝났을 때
		System.out.println("why..? afterReturn");
	}
	@AfterThrowing("execution(public * sist.com.aop.basic3.Search*.*(..) )")
	public void afterthAddMsg() {
		System.out.println("why..? throwing");
	}*/
	@Around("execution(public * sist.com.aop.basic3.Search*.*(..) )")
	public void aroundMetod(ProceedingJoinPoint jp) {		
		System.out.println("ActionTest1");
		System.out.println("ActionTest2");
		try {
			jp.proceed();
		} catch (Throwable e) {
			// TODO: handle exception
			System.out.println("ActionTest4");
		}
		
		System.out.println("ActionTest3");
		
		System.out.println("ActionTest5");
		
	}
}
