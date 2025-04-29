package com.DAO;

import java.util.List;

import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	public User login(String email,String password);
	public List<User> getUsername(String username,String password);

	
	

}
