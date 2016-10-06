package com.test1;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class TestController
{
	@RequestMapping(value="/hello.html")
	public void onInit()
	{
		System.out.println("Inside TestController");
		
//		return new ModelAndView(new RedirectView("login.htm"));
	}

}
