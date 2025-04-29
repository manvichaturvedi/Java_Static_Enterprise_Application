package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Entity;

import jakarta.servlet.RequestDispatcher;

public class UpdateDAO  {
	

	private Connection conn;

	public UpdateDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addUpdate(String ItemNm,String desc,String price,String status,String photoname) {
		boolean f=false;
		
		try {
			
			String sql = "insert into itemdetail(itemname,descr,price,status,photoname) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, ItemNm);
			ps.setString(2, desc);
			ps.setString(3, price);

			ps.setString(4, status);
			ps.setString(5, photoname);

			
           int count=ps.executeUpdate();
			 
			 if(count > 0) {
				 f = true;
				 
			 }
				

			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return f;
	}
	
	public List<Entity> getEntity(){
		List<Entity> list = new ArrayList<Entity>();
		Entity t = null;
		
		try {
			String sql="select * from itemdetail";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				t=new Entity();
				t.setId(rs.getInt(1));
				t.setItemname(rs.getString(2));
				t.setDesc(rs.getString(3));
				t.setPrice(rs.getString(4));
				t.setStatus(rs.getString(5));
				t.setPhotoadd(rs.getString(6));
				
				list.add(t);
			}
			
		} catch(Exception e) {
			
		}
		return list;
	}
	
	public Entity getEntityById(int id)
	{
		Entity t=null;
		
		try {
			String sql="select id,itemname,descr,price,status,photoname from itemdetail where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				t=new Entity();
			    t.setId(rs.getInt(1));
				t.setItemname(rs.getString(2));
				t.setDesc(rs.getString(3));
				t.setPrice(rs.getString(4));
				t.setStatus(rs.getString(5));
				
				
			}
		}catch(Exception e) {
		
	}
		return t;
	}
	
	public boolean updateItems(Entity t) {
		boolean f=false;
		
		try {
			String sql="update itemdetail set id=?,itemname=?,descr=?,price=?,status=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, t.getId());
            ps.setString(2, t.getItemname());
			ps.setString(3, t.getDesc());
			ps.setString(4, t.getPrice());

			ps.setString(5, t.getStatus());
	
			
			int i = ps.executeUpdate();
			if(i == 1)
			{
				f = true;
			}
			}catch(Exception e) {
				e.printStackTrace();
			}

            return f;
			
		}
	
	public boolean Deleteitems(int id) {
		boolean f=false;
		try {
			String sql="delete from itemdetail where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			
		    if(i == 1)
		    {
			    f = true;
		     }
		}catch(Exception e) {
			e.printStackTrace();
		}

        return f;
		
	}
	
	public List<Entity> getNewItem() {
		List<Entity> list = new ArrayList<Entity>();
		Entity b = null;
		
		try {
			String sql = "select * from itemdetail";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				b = new Entity();
				b.setId(rs.getInt(1));
				b.setItemname(rs.getString(2));
				b.setDesc(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoadd(rs.getString(6));
				
				list.add(b);
				}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

	}
	
	


