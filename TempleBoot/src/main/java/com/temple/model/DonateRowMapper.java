package com.temple.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class DonateRowMapper implements RowMapper<Donate>{

	@Override
	public Donate mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		Donate donate=new Donate();
		donate.setId(rs.getInt("id"));
		donate.setFirstName(rs.getString("firstname"));
		donate.setLastName(rs.getString("lastname"));
		donate.setEmail(rs.getString("email"));
		donate.setPhone(rs.getString("phone"));
		donate.setAmount(rs.getString("amount"));
		return donate;
	}
	
	

}
