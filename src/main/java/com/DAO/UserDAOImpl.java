package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Entity;
import com.entity.User;

public class UserDAOImpl implements UserDAO{
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
		boolean f=false;
		
		try {
			 java.sql.PreparedStatement ps = conn.prepareStatement("insert into useregister(username,fathername,email,password,date,phno,address,gender) values(?,?,?,?,?,?,?,?)");
			 ps.setString(1,us.getName());
			 ps.setString(2,us.getFathername());

			 ps.setString(3,us.getEmail());

			 ps.setString(4,us.getPassword());

			 ps.setString(5,us.getDate());
			 ps.setString(6,us.getPhno());
			 ps.setString(7,us.getAddress());
			 ps.setString(8,us.getGender());

                int i = ps.executeUpdate();
				if(i == 1){
					f = true;
				}
				}catch(Exception e) {
					e.printStackTrace();
				}

	            
		return f;
	}
	
	@Override
	public List<User> getUsername(String email,String password){
		List<User> list1 = new ArrayList<User>();
		User us = null;
		
		try {
			String sql="select * from useregister where email=? and password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			   ps.setString(1, email);
	             ps.setString(2,password);
	          
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us=new User();
				us.setId(rs.getInt(1));
	            us.setName(rs.getString(2));
           	    us.setFathername(rs.getString(3));
           	    us.setEmail(rs.getString(4));
           	    us.setPassword(rs.getString(5));
           	    us.setDate(rs.getString(6));
           	    us.setPhno(rs.getString(7));
           	    us.setAddress(rs.getString(8));
            	 us.setGender(rs.getString(9));
            
				
				list1.add(us);
			}
			
		} catch(Exception e) {
			
		}
		return list1;
	}


	@Override
	public User login(String email, String password) {
		User us=null;
		boolean f=false;
		try
		{
			
			
			 java.sql.PreparedStatement ps = conn.prepareStatement("select * from useregister where email=? and password=?");
             ps.setString(1, email);
             ps.setString(2,password);
             ResultSet rs=ps.executeQuery();
             while(rs.next()) {
            	 us=new User();
            	 us.setId(rs.getInt(1));
            	 us.setName(rs.getString(2));
            	 us.setFathername(rs.getString(3));
            	 us.setEmail(rs.getString(4));
            	 us.setPassword(rs.getString(5));
            	 us.setDate(rs.getString(6));
            	 us.setAddress(rs.getString(7));
            	 us.setGender(rs.getString(8));
             }
			 
			 
				 
			 
		}
		catch(Exception e) {
			e.printStackTrace();
			
	

		}

		return us;
	}
	
	
	

}
