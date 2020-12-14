package sist.com.app.dto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class IntercepterPro extends HandlerInterceptorAdapter{//servelet패키지를 extends해야한다.

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("preHandle");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		if(!(id.equals("BLUE")&&pw.equals("1234"))) {//id체크를 intercepter에서 처리 한다.
			response.sendRedirect("mvcIntercepter/adminLogin.jsp");
			return false;//return false면 prehandler에서 posthandle을 부르지 않는다.
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("postHandle");
		//super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("afterCompletion");
		request.getSession().setAttribute("id", request.getParameter("id"));
		request.getSession().setMaxInactiveInterval(60);
		//super.afterCompletion(request, response, handler, ex);
	}

	
	
}
