package com.temple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.temple.dao.TempleDaoImpl;
import com.temple.model.Login;
import com.temple.model.Temple;

@Service
public class TempleServiceImpl implements TempleService
{
	@Autowired
	private TempleDaoImpl templeDao;

	
	
	@Override
	public List<Temple> getAllTemple() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addCostumer(Temple temple) {
		// TODO Auto-generated method stub
		 templeDao.addCostumer(temple);
	}

	@Override
	public Temple check(Login login) {
		// TODO Auto-generated method stub
		return templeDao.check(login);
	}

	@Override
	public List<Temple> getTemple(String name, String password) {
		// TODO Auto-generated method stub
		
		return templeDao.getTemple(name, password);
	}

	

	
	
	

}
