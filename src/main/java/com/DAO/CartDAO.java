package com.DAO;



import com.entity.Cart;

public interface CartDAO {
	
	public boolean addCart(Cart c);
	public Cart getItemByUser(int userId);

}
