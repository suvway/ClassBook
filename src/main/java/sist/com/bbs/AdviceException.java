package sist.com.bbs;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class AdviceException {

	@ExceptionHandler(Exception.class)
	public ModelAndView commandException(Exception e) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("exceptionEx/adviceExceptionView");
		mv.addObject("exception", e);
		return mv;
	}
	
}
