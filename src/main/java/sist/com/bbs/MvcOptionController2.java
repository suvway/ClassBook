package sist.com.bbs;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
//@sessionAttribute({id})
public class MvcOptionController2 {
	
	@RequestMapping(value="redirectAppAction2.do")
	public String redirectApp2Process(RedirectAttributes ar, String name,int cnt) {
		ar.addFlashAttribute("name",name);
		ar.addFlashAttribute("cnt",cnt);
		ar.addFlashAttribute("age",25);
		ar.addFlashAttribute("addr","seoul");
		ar.addFlashAttribute("hobby","study");
		return "redirect:appLocation.do";
	}
	@RequestMapping(value="appLocation.do")
	public String appLocationProcess(HttpServletRequest request, String name, @RequestParam(value="cnt",required=false,defaultValue="0") String cnt) {
		System.out.println(name+" redirectAppAction2" +cnt);
		Map<String, ?>map=RequestContextUtils.getInputFlashMap(request);
		System.out.println(map.toString());
		return "redirect:/mvcCore/mvcCore3Re.jsp";
	}
	
	@RequestMapping(value="redirectAppAction.do")
	public String redirectAppActionProcess(RedirectAttributes ar, String id,String pass) {
		System.out.println(id+""+pass);
		ar.addFlashAttribute("id", id);
		ar.addFlashAttribute("pass",pass);
		return "redirect:redirectView.do";
	}
	@RequestMapping(value="redirectView.do")
	public String redirectViewProcess(@RequestParam(value="id",required=false)String id,
			@RequestParam(value="pass",required=false,defaultValue="1299")String pass,HttpServletRequest request) {
		System.out.println(id+" "+pass);
		Map<String,?>map=RequestContextUtils.getInputFlashMap(request);//addFlashAttribute를 통해 넣은 값이 들어있는 suvelet에서 map형태로 값을 반환해준다.
		System.out.println("id============"+map.get("id"));
		System.out.println("password======"+map.get("pass"));
		return "redirect:/mvcCore/mvcCore2Re.jsp";
	}
	@RequestMapping(value="loginPro.do")
	public String loginActionProcess(String id, String pw) {
		System.out.println("loginActionProcess");
		return "redirect:/intercepterList.do";
	}
	@RequestMapping(value="intercepterList.do")
	public String intercepterList(Model model) {
		model.addAttribute("msg","HelloMessage");
		return "mvcIntercepter/listView";
	}
	@RequestMapping(value="removeSession.do")//Spring에서 session 소멸시키는 방법 sessionstatus에 setComplet
	public String removeSessionProcess(SessionStatus s,HttpSession session) {
		//s.setComplete(); 이건 @sesstionAtrritue 했을 때 즉 어노테이션으로 세션 만들었을 때 소멸시키는 방법
		session.invalidate(); //이것도 session을 소멸시키는방법.
		return "redirect:/mvcIntercepter/adminLogin.jsp";
	}
}
