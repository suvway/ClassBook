package sist.com.bbs;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import sist.com.app.dto.AdminProductBean;
import sist.com.app.dto.ReplyBean;
import sist.com.app.dto.SpringMember;
import sist.com.dao.CartDao;
import sist.com.dao.SpringBoardDao;

@RestController//json바꿔주는걸 대신해준다..
public class JsonController {
	
	@Resource(name="springMemberDao")
	private SpringBoardDao dao;
	
	@Resource(name="cartDao")
	private CartDao cartDao;
	@RequestMapping(value="mvcLocation/jsonParseData.do")
	public String springAction1() {
		return "Hello SpringMVC";
	}
	@RequestMapping(value="mvcLocation/jsonParseData2.do")
	public Map<String,Object>  springAction2() {
		HashMap<String,Object>map=new HashMap<String,Object>();
		map.put("no",1);
		map.put("name","oop");
		map.put("age",25);
		
		return map;
	}
	@RequestMapping(value="mvcLocation/jsonParseData3.do")
	public Map<String,Object>  springAction3() {
		HashMap<String,Object>map=new HashMap<String,Object>();
		map.put("no",2);
		map.put("name","김우리");
		map.put("age",33);
		
		return map;
	}
	@RequestMapping(value="mvcLocation/jsonParseData4.do")
	public Map<String,Object>  springAction4() {
		HashMap<String,Object>map=new HashMap<String,Object>();
		map.put("no",00001);
		map.put("name","이몽복");
		map.put("age",4);
		
		return map;
	}
	@RequestMapping(value="springMemberInfo.do")
	public SpringMember springMember(@RequestParam(value="no", required=false,defaultValue="0") int no) {
		//System.out.println(no);
		return dao.springMemberInfo(no);
	}
	
	@RequestMapping(value="restcontroller.do")
	public String action() {
		return "alert('test')";
	}
	
	@RequestMapping(value="springMemberModify.do")
	public String springMemberModify(SpringMember member) {
		//System.out.println(member);
		System.out.println(member);
		dao.springMemberModify(member);
		return "mvcLocation/appLoc2Re";
	}
	@RequestMapping(value="loginBoot.do")
	public String loginBootAction(@RequestParam(value="id",required=false,defaultValue="BLUE")String id,String password,HttpSession session) {
		//return dao.loginBootAction(id, password)?"success":"fail";
		if(dao.loginBootAction(id, password)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(60);
			return "success";
		}else {
			return "fail";
		}
	}
	@RequestMapping(value="responseData.do")
	public String responseData(String job) {
		return job.equals("java")?"자바":"오라클";
	}
	
	@RequestMapping(value="productSearch.do")   
	public List<AdminProductBean>selectAdminProductSearch(String query,String data,String id){      
	      HashMap<String, Object>map=new HashMap<String, Object>();
	      map.put("query", query);
	      map.put("data", data);
	      map.put("id", id);
	      return cartDao.selectProduct(map);
	}
	@RequestMapping(value="adminProductMod.do")
	public AdminProductBean ajaxAdminProduct(int pk) {
	      return cartDao.adminSelectInfo(pk);
	}
	@RequestMapping(value="/testBoardList.do")
	public List<ReplyBean> testBoardList() {
		return cartDao.testReplySelect();
	}
	@RequestMapping(value="/testBoardInsert.do")
	public List<ReplyBean> testBoardList(ReplyBean bean) {
		cartDao.testReplyInsert(bean);
		return cartDao.testReplySelect();
	}
	   
}
