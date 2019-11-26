package com.temple.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.temple.model.Login;
import com.temple.model.Temple;
import com.temple.model.TempleRowMapper;

@Transactional
@Repository
public class TempleDaoImpl implements TempleDao
{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Temple> getAllCostumer() {
		
		String query="Select * from login";
		RowMapper<Temple> rowMapper=new TempleRowMapper();
		List<Temple> list=jdbcTemplate.query(query, rowMapper);
		// TODO Auto-generated method stub
		return list;
	}

	@Override
	public void addCostumer(Temple temple) {
		// TODO Auto-generated method stub
		String query="Insert Into login(name,email,number,payment,password) VALUES(?,?,?,?,?)";
		jdbcTemplate.update(query,temple.getName(),temple.getEmail(),temple.getNumber(),temple.getPayment(),temple.getPassword());
		
		
		
	}

	

/*	@Override
	public Temple check(Login login) {
		// TODO Auto-generated method stub
		
		 String sql = "select * from login where email='" + login.getUsername() + "' and password='" + login.getPassword()
		   + "'";
		   List<Temple> temlist = jdbcTemplate.query(sql, new TempleRowMapper());
		   return temlist.size() > 0 ? temlist.get(0) : null;
		
	}*/



	@Override
	public List<Temple> getTemple(String name, String password) {
		// TODO Auto-generated method stub
		
		String query = "SELECT *from login where name='"+name+"'and password='"+password+"'";
		
		RowMapper<Temple> rowMapper = new TempleRowMapper();
		List<Temple> list = jdbcTemplate.query(query, rowMapper);
		
		return list;
	}

	@Override
	public Temple check(Login login) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	

}
