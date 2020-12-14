package sist.com.web;

import java.text.DateFormat;import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.*;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/first.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/WEB-INF/views/home";
	}
	@RequestMapping(value = "/second.do", method = RequestMethod.GET)
	public String action(Locale locale, Model model) {
		model.addAttribute("msg","Hello Spring MVC");
		
		return "/WEB-INF/views/viewPage";
	}
	@RequestMapping(value= "/secondApp.do", method = RequestMethod.GET)
	public ModelAndView actionView() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("action", "SpringAction");
		modelAndView.setViewName("/WEB-INF/views/actionView");
		return modelAndView;
	}
	@RequestMapping(value= "/chartDemo.do", method = RequestMethod.GET)
	public ModelAndView chartViewAction() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("chartView", "ChartAction");
		mv.setViewName("mvcBasic/chart1");
		return mv;
				
	}
	@RequestMapping(value= "/mvcBasic/chartStart.do", method = RequestMethod.GET)
	public ModelAndView chartView() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("msg", "TitleChart");
		mv.setViewName("mvcBasic/mvcStart1Rs");
		return mv;
	}
 }
