package sist.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import sist.com.app.dto.MemberCheckBean;
import sist.com.app.dto.MemberInfoValidate;

@Controller
public class ValidateController {
   
   @PostMapping(value="formValidate.do")
   public String validateCheck(@ModelAttribute MemberCheckBean bean,BindingResult result) {   
      new MemberInfoValidate().validate(bean, result);
      
      if(result.hasErrors())
         return "validateEx/formPro";
      
      return "validateEx/formResult";
   }

}