package com.integration.entity;

public class User{
	private String email = null;
	private String name = null;	
	private String password = null;
	private String phone = null;
	private String address = null;
	private String id = null;

	//
	public User() {
	}
	//构造函数
	public User(String email,String name,String password,String address,String phone,String id) {
		
		this.name = name;
		this.password = password;
		this.email=email;
		this.address = address;
		this.phone = phone;
		this.id = id;
	}


	//
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	//
	public String getPassword() {
		return password;
	}

	public void setPassword(String passwd) {
		this.password = passwd;
	}

	//
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    
	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address = address;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone){
		this.phone=phone;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
