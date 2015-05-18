package com.integration.action;
import java.util.Iterator;
import java.util.List;

import com.integration.entity.User;
import com.integration.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 2015.5.15
 * @author luoliyong
 * @version 1.0
 */
@SuppressWarnings("serial")
public class RegistAction extends ActionSupport {
    private User user;
    private UserService userservice;
    String username;
    String email;
    public User getUser(){
  	  return this.user;
    }
    
    public void setUser(User user)
    {
  	  this.user = user;
    }
 
    public UserService getUserservice() {  
        return userservice;  
    }  
    public void setUserservice(UserService userservice) {  
        this.userservice = userservice;  
    }  
    
    public String execute() throws Exception {  
    	username = user.getName();
    	email = user.getEmail();
    	List<User> list = (List<User>) userservice.findAll();
	      User u = new User();
	      Iterator<User> it = list.iterator();
	      String page = null;
	      ActionContext.getContext().getSession().put("inOrOut", "Regist");
	      while(it.hasNext()){
	    	  u=(User)it.next();
	    	 if(username.trim().equals(u.getName())||email.trim().equals(u.getEmail()))
	    	  {    		
	    		 return "failer";
	    	  }
	      }
	    ActionContext.getContext().getSession().put("afterRegist", "yes");
        this.userservice.saveUser(this.user);  
        
        
        return SUCCESS;  
    }  
}
