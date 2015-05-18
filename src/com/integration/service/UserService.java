package com.integration.service;
import java.util.List;
import com.integration.entity.User;
public interface UserService {
	void saveUser(User user);
	User getUser(String name);
	void deleteUser(String id);
	void updateUser(User user);
	User findUserById(String id);
	
	List<User> findAll();
}
