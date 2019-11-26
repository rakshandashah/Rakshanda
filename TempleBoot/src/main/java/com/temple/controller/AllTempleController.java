package com.temple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.temple.service.DonateServiceImpl;
import com.temple.service.TempleServiceImpl;

@Controller
@SessionAttributes("user")
@RequestMapping("/temple")
public class AllTempleController
{
	@Autowired
	private TempleServiceImpl templeService;
	
	@Autowired
	private DonateServiceImpl donateService;
	
	
	
	@RequestMapping(value= {"/hanuman"},method = RequestMethod.GET)			
	public ModelAndView gohanuman()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("Gebi Hanuman");
		
		return model;
	}

	
	
	@RequestMapping(value= {"/harshidhi"},method = RequestMethod.GET)			
	public ModelAndView goharshidhi()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("Harsiddhi");
		
		return model;
	}

	@RequestMapping(value= {"/kal"},method = RequestMethod.GET)			
	public ModelAndView gokal()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("Kaal bhairav");
		
		return model;
	}

	@RequestMapping(value= {"/Mata"},method = RequestMethod.GET)			
	public ModelAndView goMata()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("garkalika mata");
		
		return model;
	}

	@RequestMapping(value= {"/Ganesh"},method = RequestMethod.GET)			
	public ModelAndView goGanesh()
	{
		ModelAndView model=new ModelAndView();	
	
		 
		model.setViewName("chintaman Ganesh");
		
		return model;
	}

	
	
	
	
}
