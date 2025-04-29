package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.text.html.parser.Entity;

import com.entity.Cart;

public class CartDAOImpl implements CartDAO{
	
	@Override
	public Cart getItemByUser(int userId) {
		Cart c = null;
		double totalprice = 0;
		try {
			String sql="select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs =ps.executeQuery();
			
			while(rs.next())
			{
				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setIid(rs.getInt(2));
				c.setItemName(rs.getString(3));
				c.setDescription(rs.getString(4));
				c.setPrice(rs.getDouble(5));
				
				totalprice = totalprice+rs.getDouble(6);
				c.setPrice(totalprice);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}


	private Connection conn;
	public CartDAOImpl(Connection conn) {
		this.conn=conn;
	}

	
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			
			String sql="insert into cart(iid,uid,itemname,description,price,totalprice) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1,c.getIid());
			 ps.setInt(2,c.getUserId());
			 ps.setString(3,c.getItemName());

			 ps.setString(4,c.getDescription());

			 ps.setDouble(5,c.getPrice());

			 ps.setDouble(6,c.getTotalprice());
			  int i = ps.executeUpdate();
				if(i == 1){
					f = true;
				}
			 }catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	

}
