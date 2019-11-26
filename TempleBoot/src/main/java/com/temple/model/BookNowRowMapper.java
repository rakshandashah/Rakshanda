package com.temple.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BookNowRowMapper implements RowMapper<BookNow> {

	@Override
	public BookNow mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
	
		BookNow booknow=new BookNow();
		booknow.setName(rs.getString("name"));
		booknow.setEmail(rs.getString("email"));
		booknow.setContact(rs.getString("contact"));
		booknow.setAmount(rs.getString("amount"));
		return booknow;
				
	}
		
	
}
