package com.entity;

public class Entity {
	private int id;
	private String itemname;
	private String desc;
	private String price;
	private String status;
	private String photoadd;
	
	
	
	
	
	public Entity() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Entity(String itemname, String desc, String price, String status, String photoadd) {
		super();
		this.itemname = itemname;
		this.desc = desc;
		this.price = price;
		this.status = status;
		this.photoadd = photoadd;
	}
	
	
	public String getPhotoadd() {
		return photoadd;
	}
	public void setPhotoadd(String photoadd) {
		this.photoadd = photoadd;
	}
	public int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "Entity [id=" + id + ", itemname=" + itemname + ", desc=" + desc + ", price=" + price + ", status="
				+ status + ", photoadd=" + photoadd + "]";
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
