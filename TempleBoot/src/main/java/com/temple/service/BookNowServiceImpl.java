package com.temple.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.temple.dao.BookNowDaoImpl;
import com.temple.model.BookNow;

@Service 
public class BookNowServiceImpl implements BookNowService {

	
	@Autowired
	private BookNowDaoImpl booknowDao; 
	
	@Override
	public void addBookNow(BookNow booknow) {
		// TODO Auto-generated method stub
		
		booknowDao.addBookNow(booknow);
		
		
		
		
		
	}

	
	
}
