package com.temple.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.temple.model.BookNow;
import com.temple.model.Donate;
import com.temple.model.Temple;
import com.temple.service.BookNowServiceImpl;
import com.temple.service.DonateServiceImpl;
import com.temple.service.TempleServiceImpl;

@Controller
@SessionAttributes("user")
@RequestMapping("/temple")
public class TempleController 
{
	@Autowired
	private TempleServiceImpl templeService;
	
	@Autowired
	private DonateServiceImpl donateService;
	
	@Autowired
   private BookNowServiceImpl bookNowService;
	/*
	 * @Autowired private TempleServiceImpl templeService;
	 */
	
	@RequestMapping(value= {"/add"},method = RequestMethod.GET)			
	public ModelAndView addTemplate()
	{
		ModelAndView model=new ModelAndView();	
		
		  Temple temple=new Temple();
		  model.addObject("userForm",temple);	 
		model.setViewName("user_form");	
		return model;
	}
	@RequestMapping(value= {"/save"},method=RequestMethod.POST)
	public ModelAndView saveOrUpdate(@ModelAttribute("userForm") Temple temple)
	{
		templeService.addCostumer(temple);
		return new ModelAndView("redirect:/temple/home");
	}
	
	

		
	@RequestMapping(value= {"/home"},method = RequestMethod.GET)			
	public ModelAndView goHome()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("home_page");
		
		return model;
	}
	
	
	@RequestMapping(value= {"/about"},method = RequestMethod.GET)			
	public ModelAndView goabout()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("about_us");
		
		return model;
	}
	
	


	
	@RequestMapping(value= {"/donate"},method = RequestMethod.GET)			
	public ModelAndView addDonater()
	{
		ModelAndView model=new ModelAndView();	
		Donate donate=new Donate();
		model.addObject("donateForm", donate);
		model.setViewName("donate");
		return model;
	}
	@RequestMapping(value= {"/sav"},method=RequestMethod.POST)
	public ModelAndView saveOrUpdate(@ModelAttribute("donateForm") Donate donate)
	{
		donateService.addDonater(donate);
		return new ModelAndView("redirect:/temple/home");
	}
	
	
	
	
	
	@RequestMapping(value= {"/contact"},method = RequestMethod.GET)			
	public ModelAndView gocontact()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("contact_us");
		
		return model;
	}
	


	
	
	

	@RequestMapping(value= {"/pooja"},method = RequestMethod.GET)			
	public ModelAndView goreg()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("pooja_detail");
		
		return model;
	}

	
	@RequestMapping(value= {"/mahakal"},method = RequestMethod.GET)			
	public ModelAndView gomahakal()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("mahakal");
		
		return model;
	}
	
	

	@RequestMapping(value= {"/shani"},method = RequestMethod.GET)			
	public ModelAndView goshani()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("shanidev");
		
		return model;
	}
	

	@RequestMapping(value= {"/media"},method = RequestMethod.GET)			
	public ModelAndView gomedia()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("media");
		
		return model;
	}
	

	
	

	
	@RequestMapping(value= {"/signUp"},method = RequestMethod.GET)			
	public ModelAndView gosignUp()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("user_form");
		
		return model;
	}

	@RequestMapping(value = {"/Receipt" }, method = RequestMethod.GET)
	public ModelAndView getAllDetails() {
		ModelAndView model = new ModelAndView();
		List<Donate>list = donateService.getAllDonate();

		model.addObject("Receipt", list);
		model.setViewName("Receipt");
		return model;
	}
	


	@RequestMapping(value= {"/booknow"},method = RequestMethod.GET)			
	public ModelAndView addBooknow()
	{
		ModelAndView model=new ModelAndView();	
		
		  BookNow booknow=new BookNow();
		  model.addObject("bookNow",booknow);	 
		model.setViewName("book_now");	
		return model;
	}
	@RequestMapping(value= {"/sub"},method=RequestMethod.POST)
	public ModelAndView saveOrUpdate(@ModelAttribute("bookNow") BookNow booknow)
	{
		bookNowService.addBookNow(booknow);
		return new ModelAndView("redirect:/temple/home");
	}
	
	
	
	

}
