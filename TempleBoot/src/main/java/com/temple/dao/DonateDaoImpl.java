package com.temple.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.temple.model.Donate;
import com.temple.model.DonateRowMapper;

@Transactional
@Repository
public class DonateDaoImpl implements DonateDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void addDonater(Donate donate) 
	{
		// TODO Auto-generated method stub
		String query="Insert Into donate(firstname,lastname,email,phone,amount) VALUES(?,?,?,?,?)";
		jdbcTemplate.update(query,donate.getFirstName(),donate.getLastName(),donate.getEmail(),donate.getPhone(),donate.getAmount());
		
		
	}


	@Override
	public List <Donate> getAllDonate() {
		// TODO Auto-generated method stub
		String query="Select * from donate";
		RowMapper<Donate> rowMapper=new DonateRowMapper();
		List<Donate>list=jdbcTemplate.query(query, rowMapper);
		// TODO Auto-generated method stub
		return list;
	}

}
