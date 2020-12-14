package sist.com.bbs;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.com.app.dto.BootBoardBean;
import sist.com.app.dto.ReplyBean;
import sist.com.app.dto.SpringMember;
import sist.com.dao.SpringBoardDao;

@Controller
public class BoardController {
	
	@Resource(name="springMemberDao")
	private SpringBoardDao dao;
	
	@RequestMapping(value="paramAction.do")
	public String formDatParam(@RequestParam(name="data", required=false, defaultValue="action") String data,Model model) {
		model.addAttribute("data",data);
		
		return "mvcBasic/mvcParam";
	}
	@RequestMapping(value="dataProcess.do")
	public String dataProcessAction(String data,Model model) {
		model.addAttribute("model",data);
		return "mvcBasic/dataView";
	}
	@RequestMapping(value="mvcLocation/appServlet1.do")
	public String appServletAction() {
		System.out.println("appServlet1.do");
		return "redirect:appLocRe1.jsp";//redirect하면 발생한 곳에서 출발하기 때문에 mvcLocation/appLocRe1.jsp를 부를 때 앞에 껄 빼야한다.
	}
	@RequestMapping(value="springMember.do")
	public String insertMemberSpring(SpringMember member,HttpSession session) {
        dao.insertMember(member);
		return "redirect:springMemberList.do";
	}
	
	@RequestMapping(value="springMemberList.do")
	public String listMemberSpring(Model model) {
		model.addAttribute("member",dao.selectMember());
		return "mvcLocation/appLoc2Re";
	}
	@RequestMapping(value="springMemberDelete.do")
	public String springMemberDelete(@RequestParam(name="no",required=false,defaultValue="0") int no) {
		dao.springMemberDelete(no);
		return "mvcLocation/appLoc2Re";
	}
	@RequestMapping(value="bootList.do")
	public String bootListAction(Model model) {
		model.addAttribute("bList",dao.selectBootBoard());
		return "bootBoard/board";
	}
	@RequestMapping(value="downloadAction.do")
	public ModelAndView downloadStream(String fileName) {
		System.out.println(fileName);
		String loc="D:\\JAVAWORKS\\Spring\\web\\src\\main\\webapp\\upload\\";
		File file=new File(loc+fileName);
		HashMap<String, File>map=new HashMap<String, File>();
		map.put("action", file);
		return new ModelAndView("download",map);
	}
	
	@RequestMapping(value="bootInsert.do")
	public String BootInsertAction(BootBoardBean bean,@RequestParam(value="file",required=false) MultipartFile file) {//multipartfile을 통해서 파일 업로드
		String loc="D:\\JAVAWORKS\\Spring\\web\\src\\main\\webapp\\upload\\";//꼭 끝에 \\을 붙이자
		FileOutputStream fos=null;
		String fileName=file.getOriginalFilename();
		if(fileName.length()>0) {
			try {
				fos=new FileOutputStream(new File(loc+fileName));
				fos.write(file.getBytes());
				bean.setFileName(fileName);
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				try {
					fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
	
	
		System.out.println(bean);
		dao.BootInsertAction(bean);
		
		return "redirect:bootList.do";
	}
	@RequestMapping(value="bootUpdate.do")
	public String BootUpdateAction(BootBoardBean bean,MultipartFile file) {
		String loc="D:\\JAVAWORKS\\Spring\\web\\src\\main\\webapp\\upload\\";//꼭 끝에 \\을 붙이자
		FileOutputStream fos=null;
		String fileName=file.getOriginalFilename();
		if(fileName.length()>0) {
			try {
				fos=new FileOutputStream(new File(loc+fileName));
				fos.write(file.getBytes());
				bean.setFileName(fileName);
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				try {
					fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		System.out.println(bean);
		dao.BootUpdateAction(bean);
		
		return "redirect:bootList.do";
	}
	
	@RequestMapping(value="bootBoard/infoSelect.do")
	public String infoSelectAction(@RequestParam(value="no",required=false)int no, Model model,String job) {
		if(job!=null&&job.equals("info")) {
			dao.updateHitAction(no);
			model.addAttribute("info",dao.infoSelectAction(no));
			return "bootBoard/info";
		}
		if(job!=null&&job.equals("modify")) {
			model.addAttribute("info",dao.infoSelectAction(no));
		}
		return "bootBoard/write";
	}
	
	
}
