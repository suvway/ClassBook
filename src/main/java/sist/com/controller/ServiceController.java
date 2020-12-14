package sist.com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import sist.com.dao.Dao;

@Controller
public class ServiceController {
	//@Resource(name="adminDao")
	private Dao dao;
}
