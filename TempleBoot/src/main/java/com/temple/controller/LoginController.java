package com.temple.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.temple.model.Login;
import com.temple.model.Temple;
import com.temple.service.TempleServiceImpl;


@Controller
@SessionAttributes("user")
@RequestMapping("/temple")
public class LoginController 
{
	@Autowired
	private TempleServiceImpl templeService;
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView adminLogin() 
	{
		ModelAndView model = new ModelAndView();
		Temple login=new Temple();
		model.addObject("logins", login);
		model.setViewName("login_form");
		return model;

	}
		
	
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public ModelAndView adminLogin(@ModelAttribute("logins") Temple temple, HttpSession session)
	{
		ModelAndView model = new ModelAndView();
		model.addObject("name",temple.getName());
		model.addObject("password",temple.getPassword());
		ModelAndView model1 = new ModelAndView("home_page");
		
		
		String name=temple.getName();
		String password=temple.getPassword();
		
		java.util.List<Temple> list =templeService.getTemple(name,password);
		
		model1.addObject("user",list.get(0));
		
		return list.size()>0?model1:new ModelAndView("redirect:/temple/login");
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String nextHandlingMethod2(SessionStatus status){
		  status.setComplete();
		  return "home_page";
		}
	
		/*		 @RequestMapping(value = "/login", method = RequestMethod.GET)
		  public ModelAndView showLogin()
				 {
					 
					 Login login=new Login();
		    ModelAndView model = new ModelAndView("login");
		    model.addObject("logins",login);
		    model.setViewName("login_form");
		    return model;
		  }
				 		 
				 
		/*	 @RequestMapping(value = {"/loginval"} ,method = RequestMethod.POST)
				 public ModelAndView loginValidate(@ModelAttribute("logins") Login login)
				 {

				 ModelAndView model = null;
				Temple tem = templeService.check(login);
				   

				 if(null !=tem )
				 {
				 model = new ModelAndView("home");
				 
				 }
				 else
				 {
				  model = new ModelAndView("login");
				    model.addObject("message", "Username or Password is wrong!!");
				 }


				 return model;
				 }

	*/
	
	
	//@RequestMapping(value = "login",method = RequestMethod.GET)			
		 
	//	public  String  init(Model model)
	//	{
	//		model.addAttribute("msg", "Please Enter your Login Page");
			
			
	//		return "login_form.jsp";
	//	}	
	
	
	
		
/*	@RequestMapping(method=RequestMethod.POST)
	public String  submit(Model model,
			 @ModelAttribute("loginFormff") Temple temple) 
	
	{
		
		 if (temple != null && temple.getEmail()!=null
				 &temple.getPassword()!=null)
		 {
			 if(temple.getEmail().equals("arvind")&&temple.getPassword().equals("123445"))
			 {
				 model.addAttribute("msg",temple.getName());
				 return "contect_us.jsp";
			 }
			 else
			 {
				 model.addAttribute("error","Invalid Details");
				 return "login_form.jsp";
			 }
		 }
		 else
		 {
			 model.addAttribute("error","Please Enter Details");
			 return "login_form.jsp";
		 }
				 
				 
		
	}*/

}
