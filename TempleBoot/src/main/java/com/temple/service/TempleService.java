package com.temple.service;

import java.util.List;

import com.temple.model.Login;
import com.temple.model.Temple;

public interface TempleService
{
	
	public List<Temple> getAllTemple();
	
	public void addCostumer(Temple temple);
	
	public Temple check(Login login);
	
	public List<Temple> getTemple(String name,String password);
	
}
