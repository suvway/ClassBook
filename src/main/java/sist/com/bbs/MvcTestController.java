package sist.com.bbs;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.app.dto.MvcTransactionBean;
import sist.com.dao.MvcTestDao;

@Controller
public class MvcTestController {

	@Resource
	private MvcTestDao dao;
	
	@RequestMapping(value="transactionTest1.do")
	   public String transactionTest1(MvcTransactionBean bean) {
	      dao.insertUpdate(bean);
	      return "redirect:/mvcTransaction/indexRe.jsp";
	   }
}
