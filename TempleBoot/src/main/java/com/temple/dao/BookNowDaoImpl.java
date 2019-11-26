package com.temple.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.temple.model.BookNow;

@Transactional
@Repository
public class BookNowDaoImpl implements BookNowDao{

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void addBookNow(BookNow booknow) {
		// TODO Auto-generated method stub
		
		String query="Insert Into booking(Name,Email,Contact,Amount) VALUES(?,?,?,?)";
		jdbcTemplate.update(query,booknow.getName(),booknow.getEmail(),booknow.getContact(),booknow.getAmount());
			
	}

}
