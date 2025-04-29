package com.entity;



public class User {
	
	private int id;
	private String name;
	private String fathername;
	private String email;
	private String password;
	private String date;
	private String phno;
	private String Address;
	private String country;
	private String gender;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCountry() {
		return country;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", fathername=" + fathername + ", email=" + email + ", password="
				+ password + ", date=" + date + ", phno=" + phno + ", Address=" + Address + ", country=" + country
				+ ", gender=" + gender + "]";
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

}
