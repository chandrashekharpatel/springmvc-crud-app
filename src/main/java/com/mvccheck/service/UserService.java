package com.mvccheck.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.mvccheck.model.User;
import com.mvccheck.model.User;
import com.mvccheck.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
     public void saveUser(User user) {
    	 userRepository.save(user);
     }
     
     public List<User> findAll(){
     	return (List<User>) userRepository.findAll();
     }
     public void deleteUser(int userId) {
     	 userRepository.deleteById(userId);
     }
     public User updateUser(User user) {
     	return userRepository.save(user);
     }

     public User findById(int userId) {
     	return userRepository.findById(userId).get();
     }
     
     public List<User> searchUser(String query){
     	
     	List<User> users = (List<User>) userRepository.findAll();
     	List<User> matchedUsers = new ArrayList<User>();

     	for(User user : users) {
     		if(user.getUserName().toLowerCase().contains(query.toLowerCase())) {
     			matchedUsers.add(user);
     		}
     	}
     	
     	return matchedUsers;
     }
     
}
