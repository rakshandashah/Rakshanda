package com.temple.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class TempleRowMapper implements RowMapper<Temple>
{

	@Override
	public Temple mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Temple temple = new Temple();
		temple.setName(rs.getString("name"));
		temple.setEmail(rs.getString("email"));
		temple.setNumber(rs.getString("number"));
		temple.setPassword(rs.getString("password"));
		temple.setPayment(rs.getString("payment"));
		
		return temple;
	}

	
}
