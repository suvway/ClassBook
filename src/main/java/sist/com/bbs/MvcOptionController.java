package sist.com.bbs;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ser.std.UUIDSerializer;

import sist.com.app.dto.BootBoardBean;
import sist.com.dao.MvcBasicDao;
import sist.com.dao.SpringBoardDao;
import sist.com.app.dto.UserException;

@Controller
//@SessionAttributes(value = { "memberList", "Test" })
public class MvcOptionController {

	@Resource(name = "basicDao")
	private MvcBasicDao dao;
	@Resource
	private SpringBoardDao spDao;

/*	@ModelAttribute(name = "memberList") // 이런식으로 model에 공통단으로 쓰이는 것을 add해줄 수 있다.
	public List<BootBoardBean> selectModel() {
		return spDao.selectBootBoard();
	}*/

	@RequestMapping(value = "mvcDemo1.do", method = RequestMethod.GET)
	public String locationTest1(Model model) {
		System.out.println(dao);
		model.addAttribute("test", "test result:");
		// sessionattribute 에서 key값을 지정해줬고 modeelattribute를 통해서 위에 지정한 키 값에 값을 지정해줬다
		// 즉 memberList에 modelattribute를 통해서 selectbootboard에 리턴을 주입해줘서 redirect에서도
		// ${memberList}를 통해 값 호출가능.
		// dispatcher or redirect-> return String: dispatcher
		return "redirect:/mvcBasic/mvcStart2Re.jsp";
	}

	@RequestMapping(value = "mvcBasic/mvcDemo2.do", method = RequestMethod.GET)
	public void locationTest2(Model model) {
		System.out.println(dao);
		// dispatcher or redirect-> return String: dispatcher
		// String or void or model&view
		// void -> value.jsp
		model.addAttribute("MSG", spDao.selectBootBoard());

	}

	@RequestMapping(value = "responseData2.do")
	@ResponseBody
	public Map<String, String> getDataAction(String job) {
		HashMap<String, String> m = new HashMap<String, String>();
		m.put("Action", "Spring");
		return m;
	}

	@RequestMapping(value = "responseData3.do")
	@ResponseBody
	public BootBoardBean responseBootBoard(String job) {
		return new BootBoardBean(100, "BLUE", "oop", "1234", "SUBJECT", "contents", 500, "D:\\AV.jpg", "2020/0510");

		
	}
	
	@RequestMapping(value = "responseData4.do")
	@ResponseBody
	public List<BootBoardBean> responseListBootBoard(String job) {
		return spDao.selectBootBoard();
	}
	@RequestMapping(value="mvcBasic/headRead1.do")
	public String headAction1(@RequestHeader("Accept")String acceptType,Model model) {
		model.addAttribute("acceptType",acceptType);
		return "mvcBasic/mvcStart3Re";
	}
	@RequestMapping(value="mvcBasic/headRead2.do")
	public String headAction2(@RequestHeader("Accept")String acceptType,@RequestHeader("Host")String host,@RequestHeader("User-Agent")String userAgent,Model model) {
		model.addAttribute("acceptType",acceptType);
		model.addAttribute("host",host);
		model.addAttribute("userAgent",userAgent);
		return "mvcBasic/mvcStart3Re";
	}
	@RequestMapping(value="mvcBasic/headRead3.do")
	public String headAction3(@RequestHeader("Accept")String acceptType,@RequestHeader("Host")String host,@RequestHeader("User-Agent")String userAgent,Model model) {
		Map<String,Object>map=new HashMap<String, Object>();
		map.put("acceptType", acceptType);
		map.put("host", host);
		map.put("userAgent", userAgent);
		model.addAttribute("map",map);
		return "mvcBasic/mvcStart3Re";
	}
	@RequestMapping(value="mvcBasic/cookieTest1.do")
	public String cookieMake(@RequestParam(value="color", required=false,defaultValue="red")String color,HttpServletResponse response) {
		Cookie cookie=null;
		cookie=new Cookie("color", color);
		cookie.setMaxAge(30);
		//response 객체가 없으면 위에서 처럼 파라미터로 받아서 사용하면 된다.
		//response에 cookie를 넣어서 쓰는방법
		response.addCookie(cookie);
		//redirect로 이동할 때는 발생한 폴더에 있는 파일로 갈 경우 앞에 경로 안써야한다.
		return "redirect:cookieIndex.jsp";
	}
	/*@RequestMapping(value="cookieCheck.do")
	public String cookieAction(HttpServletRequest request) {
		String color="white";
		Cookie[] ck= request.getCookies();
		if(ck!=null&&ck.length>0) {
			for(int i=0;i<ck.length;i++) {
				if(ck[i].getName().equals("color")) {
					color=ck[i].getValue();
				}
			}
		}
	이것이 자바에서 쓰던 방법	
	}*/
	@RequestMapping(value="mvcBasic/cookieCheck.do")
	public String cookieAction(@CookieValue(value="color",required=false,defaultValue="red")String color,Model model) {
		model.addAttribute("color",color);
		//파라미터에서 쿠키 값을 받아서 모델로 던지는 방식
		return "mvcBasic/cookieColorAction"; 
	}
	
	
	   @RequestMapping(value="mvcCore/castException.do",method=RequestMethod.GET)   
	   public String castProcess(HttpServletRequest request) {
	      String job=request.getParameter("job");
	      Object obj=new Object();
	      String temp=(String)obj;
	      return job==null?"mvcCore/mvcCore1Re":job;
	   }
	   
	 /*  @ExceptionHandler(ClassCastException.class)
	   public ModelAndView commandEx1(ClassCastException e) {
		   ModelAndView modelAndView=new ModelAndView();
		   modelAndView.setViewName("exceptionEx/exceptionEx1");
		   modelAndView.addObject("exception",e);
		   return modelAndView;
	   }
	   @ExceptionHandler(NullPointerException.class)
	   public ModelAndView commandEx2(NullPointerException e) {
		   ModelAndView modelAndView=new ModelAndView();
		   modelAndView.setViewName("exceptionEx/exceptionEx2");
		   modelAndView.addObject("exception",e);
		   return modelAndView;
	   }
	   @ExceptionHandler(UserException.class)
	   public ModelAndView commandEx3(UserException e) {
		   ModelAndView modelAndView=new ModelAndView();
		   modelAndView.setViewName("exceptionEx/exceptionEx3");
		   modelAndView.addObject("exception",e);
		   return modelAndView;
	   }*/
	   @RequestMapping(value="nullException.do")
	   public String nullPointProcess(int no) {
		   String str=no>=10?"s":null;
		   str.charAt(0);
		   return "mvcCore/mvcCore1Re";
	   }
	   @RequestMapping(value="userException.do")
	   public String userExceptionProcess(int port) throws UserException{
		   if(port>=5000) {
			   throw new UserException();
		   }
		   return "mvcCore/mvcCore1Re";
	   }

}
