package com.temple.dao;

import java.util.List;

import com.temple.model.Donate;

public interface DonateDao {
	
	public void addDonater(Donate donate);

	public List<Donate> getAllDonate();
	

}
