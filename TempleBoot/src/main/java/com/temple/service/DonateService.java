package com.temple.service;

import java.util.List;

import com.temple.model.Donate;

public interface DonateService {
	
	public void addDonater(Donate donate);

	public List<Donate> getAllDonate();
}
