package com.temple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.temple.dao.DonateDaoImpl;
import com.temple.model.Donate;

@Service
public class DonateServiceImpl implements DonateService{

	@Autowired
	private DonateDaoImpl donateDao;

	@Override
	public void addDonater(Donate donate) {
		// TODO Auto-generated method stub
	
		donateDao.addDonater(donate);
	}

	@Override
	public List<Donate> getAllDonate() {
		// TODO Auto-generated method stub
		return donateDao.getAllDonate();

	}

	
}
