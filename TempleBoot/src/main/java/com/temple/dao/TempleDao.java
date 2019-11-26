package com.temple.dao;

import java.util.List;

import com.temple.model.Login;
import com.temple.model.Temple;


public interface TempleDao {
	
	
	
	public List<Temple> getAllCostumer();
	
	public void addCostumer(Temple temple);
	
	public Temple check(Login login);
	
	public List<Temple> getTemple(String name,String password);
	
		
}
