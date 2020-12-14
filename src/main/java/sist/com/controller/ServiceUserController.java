package sist.com.controller;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import sist.com.app.dto.ParamBean;
import sist.com.dao.AdminDao;
import sist.com.dao.ClientDao;
import sist.com.dao.Dao;

@Controller
@SessionAttributes(value="arrayBean")
public class ServiceUserController {
	@Resource(name="clientDao")
	private Dao dao;
	
	@Resource(name="adminDao")
	private AdminDao AdminDao;
	
	@ModelAttribute(name="arrayBean")
	public String[] getArrayBean(){
		String []str= {"Ajax","Spring"};
		return str;
	}
	
	@RequestMapping(value="userAction.do")
	public String serviceLocation(@RequestParam(value="job",required=false)String job) {
		if(job!=null&&job.equals("Admin")) {
			dao.select();
		}else {
			AdminDao.select();
		}
		return "mvcFront/reView";
	}
	@RequestMapping(value="userActionParam.do")
	public String userInjection(@ModelAttribute(name="bean") ParamBean bean) {
		System.out.println(bean);
		
		return "mvcFront/reView";
	}
	
}
