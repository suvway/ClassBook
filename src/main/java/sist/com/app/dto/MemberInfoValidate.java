package sist.com.app.dto;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MemberInfoValidate implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberCheckBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub
		MemberCheckBean bean = (MemberCheckBean) obj;
		if (bean.getId() == null || bean.getId().length() == 0) {
			errors.rejectValue("id", "idCheck");
		}
		if (bean.getName() == null || bean.getName().length() == 0) {
			errors.rejectValue("name", "nameCheck");
		}
		if (bean.getAddr() == null || bean.getAddr().length() == 0) {
			errors.rejectValue("addr", "AddrCheck");
		}
		if (bean.getEmail() == null || bean.getEmail().length() == 0) {
			errors.rejectValue("email", "emailCheck");
		}

	}
}
