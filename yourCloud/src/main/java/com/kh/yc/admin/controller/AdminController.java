package com.kh.yc.admin.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value = "member.ad", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		
		return "admin/memberManagement";
	}
	
	@RequestMapping(value = "main.ad", method = RequestMethod.GET)
	public String admin2(Locale locale, Model model) {
		
		return "admin/admin_index";
	}
	
	@RequestMapping(value = "project1.ad", method = RequestMethod.GET)
	public String admin3(Locale locale, Model model) {
		
		return "admin/projectManagement";
	}
	
	@RequestMapping(value = "project2.ad", method = RequestMethod.GET)
	public String admin4(Locale locale, Model model) {
		
		return "admin/book";
	}
	
	
	@RequestMapping(value = "project3.ad", method = RequestMethod.GET)
	public String admin5(Locale locale, Model model) {
		
		return "admin/charts";
	}
	
	@RequestMapping(value = "project4.ad", method = RequestMethod.GET)
	public String admin6(Locale locale, Model model) {
		
		return "admin/projectStatus";
	}
	
	@RequestMapping(value = "project5.ad", method = RequestMethod.GET)
	public String admin7(Locale locale, Model model) {
		
		return "admin/adjust";
	}
	
	@RequestMapping(value = "project6.ad", method = RequestMethod.GET)
	public String admin8(Locale locale, Model model) {
		
		return "admin/report";
	}
	

}