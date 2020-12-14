package sist.com.bbs;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.com.app.dto.AdminProductBean;
import sist.com.app.dto.BootBoardBean;
import sist.com.app.dto.ReplyBean;
import sist.com.dao.CartDao;

//Ajax Crud,
@Controller
public class ProductController {
	@Resource(name = "cartDao")
	private CartDao dao;

	@RequestMapping(value = "cartAdminLogin.do")
	public String adminMemberLoginCheck(String id, String pw, HttpSession session) {
		if (dao.adminLoginIdCheck(id, pw)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(120);
		}
		return dao.adminLoginIdCheck(id, pw) ? "redirect:productList.do?id=" + id
				: "redirect:cartSpring/cart/adminLogin.jsp";
	}

	@RequestMapping(value = "productList.do")
	public String productListAction(@RequestParam(value = "id", required = false, defaultValue = "ig") String id,
			Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		model.addAttribute("adminProduct", dao.selectProduct(map));
		return "cartSpring/cart/productAdd";

	}

	@RequestMapping(value = "productInsert.do")
	public String productInsertAction(AdminProductBean bean,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		String loc = "D:\\JAVAWORKS\\Spring\\web\\src\\main\\webapp\\upload\\";
		FileOutputStream fos = null;
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(new File(loc + fileName));
				fos.write(file.getBytes());
				bean.setFileName(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
			} finally {
				try {
					fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		System.out.println(bean);
		if (bean.getJob().equals("new")) {
			dao.insertProductAdmin(bean);
		} else if (bean.getJob().equals("modify")) {
			dao.modifyProductAdmin(bean);
		}

		return "redirect:productList.do?id=" + bean.getId();
	}

	@RequestMapping(value = "adminProductDelete.do")
	public ModelAndView adminProductDelete(
			@RequestParam(value = "id", required = false, defaultValue = "BLUE") String id, int pk) {
		ModelAndView modelAndView = new ModelAndView();
		AdminProductBean bean = new AdminProductBean();
		bean.setId(id);
		bean.setPk(pk);
		dao.adminProDelete(bean);
		modelAndView.setViewName("redirect:productList.do?id=" + id);
		return modelAndView;

	}

	@RequestMapping(value = "clientList.do")
	public String clientListSelect(Model model) {
		model.addAttribute("cList", dao.clientSelect());
		return "/cartSpring/cart/productList";
	}

	@RequestMapping(value="clientInfo.do")
	   public String clientInfoProduct(int pk,Model model) {
	      model.addAttribute("info",dao.clientInfoAction(pk));
	      model.addAttribute("infoList", dao.infoReplySelect(pk));
	      return "cartSpring/cart/productInfo";
	   }

	@RequestMapping(value = "/cartSpring/cart/cartdel.do")
	public String cartdeleteProcess(int pk, HttpSession session) {
		ArrayList<AdminProductBean> cart = null;
		int index=-1;
		cart = (ArrayList<AdminProductBean>) session.getAttribute("cart");// session이 null을 return을 하는 것....
		if (cart == null)
			cart = new ArrayList<AdminProductBean>();
		boolean flag = false;
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getPk() == pk)
				flag = true;
				index=i;
				break;
		}
		if (flag)
			cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cartSpring/cart/cartList.jsp";
	}

	@RequestMapping(value = "cartAdd.do")
	public String cartAddProcess(int pk, HttpSession session) {
		AdminProductBean adminProductBean = dao.clientInfoAction(pk);
		ArrayList<AdminProductBean> cart = null;
		cart = (ArrayList<AdminProductBean>) session.getAttribute("cart");// session이 null을 return을 하는 것....
		if (cart == null)
			cart = new ArrayList<AdminProductBean>();
		boolean flag = false;
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getPk() == pk)
				flag = true;
		}
		if (!flag)
			cart.add(adminProductBean);
		session.setAttribute("cart", cart);
		return "redirect:cartSpring/cart/cartList.jsp";
	}
	@RequestMapping(value="replyInsert.do")
	   public String replyInsertAction(ReplyBean bean,HttpSession session) {      
	      
	      System.out.println("replyInsertAction"+bean);
	      dao.insertReplyView(bean);
	      session.setAttribute("infoList", dao.infoReplySelect(bean.getInfopk()));
	      return "redirect:clientInfo.do?pk="+bean.getInfopk();
	   }   
	

}
