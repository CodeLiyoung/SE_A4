package com.integration.action;
import java.util.Iterator;
import java.util.List;

import com.integration.service.UserService;
import com.integration.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * @author luoliyong
 * @version 1.0
 */

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
    	String username;
	    String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String execute(){
	      List<User> list = (List<User>) userService.findAll();
	      User u = new User();
	      Iterator<User> it = list.iterator();
	      String page = null;
	      while(it.hasNext()){
	    	  u=(User)it.next();
	    	 if(username.trim().equals(u.getName())&&password.trim().equals(u.getPassword()))
	    	 {
	    		 ActionContext.getContext().getSession().put("name", username);
	    		 return "success";
	    	 }
	    	  else
	    		 page = "failer";
	      }
	     
	      return page;
     }
}
	