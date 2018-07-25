package net.kr.PharmacyManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value = {"/", "/home", "/index"})
	
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("Greeting","Welcome to Spring Web MVC");
		return mv; 
	}
	
	//Demonstration of value passing in query String and the path
	
//@RequestMapping(value = {"/test"})
//	
//	public ModelAndView test(@RequestParam("greeting") String greeting) {
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("Greeting",greeting);
//		return mv; 
//	}
//}
//	in above we are getting the error 404 if we are not provided the query string. So Following code will be resolve if query string not 
//	available.

//@RequestMapping(value = {"/test"})
//
//public ModelAndView test(@RequestParam(value="greeting",required=false) String greeting) {
//	if(greeting==null) {
//		greeting = "Hello There";
//	}
//	ModelAndView mv = new ModelAndView("page");
//	mv.addObject("Greeting",greeting);
//	return mv; 
//}
//// in following code we are using the PathVariable annotation to pass the values in the path. Simply like this http://localhost:8080/PharmacyManagement/testPath/Hello
//@RequestMapping(value = {"/testPath/{greeting}"})
//
//public ModelAndView testPath(@PathVariable("greeting") String greeting) {
//	if(greeting==null) {
//		greeting = "Hello There";
//	}
//	ModelAndView mv = new ModelAndView("page");
//	mv.addObject("Greeting",greeting);
//	return mv; 
//}
	
	
	
}
