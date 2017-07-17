package com.test.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String helloPrint(Model model) {
		
		model.addAttribute("message", "Spring 4 MVC Hello World!");
		return "hello";
	}
	
	@RequestMapping(value="/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("hello");
		modelAndView.addObject("msg", name);
		
		return modelAndView;
	}
}
