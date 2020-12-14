package sist.com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.app.dto.EmpBean;
import sist.com.dao.ScottBasicDao;

@Controller
public class SqlScottController {
   @Autowired
   private ScottBasicDao dao;   
   
   
@RequestMapping(value="sqlEmpSelect.do")
public String empSeletSql(Model model,@RequestParam(value="sal",required=false,defaultValue="0") int sal,
      @RequestParam(value="job",required=false,defaultValue="KING")String job) {
   System.out.println("Sal===="+sal);
   HashMap<String, Object>map=new HashMap<String, Object>();
   map.put("sal", sal);
   map.put("job", job);
   System.out.println(map);
   model.addAttribute("empList", dao.selectSqlEmp(map));
   return "mvcFront/empView";
}
@RequestMapping(value="empCheckSelect.do")
 public String empCheckSeletSql(String []empno,Model model) {
   HashMap<String, String[]>map=new HashMap<String, String[]>();
   map.put("empno", empno);
   model.addAttribute("empList", dao.selectSqlEmpCheckBox(map));
   return "mvcFront/empView";
  }

@RequestMapping(value="updateEmpAction.do")
	public String updateSelect(EmpBean bean,Model model) {
	System.out.println(bean);
	dao.updateEmpAction(bean);
	model.addAttribute("empList",dao.selectSqlEmp(null));
	return "mvcFront/empView";
	}
}




















