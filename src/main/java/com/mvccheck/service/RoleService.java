package com.mvccheck.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.hibernate.annotations.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.mvccheck.model.Role;
import com.mvccheck.repository.RoleRepository;

@Service
public class RoleService {
	
    private final RoleRepository roleRepository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public void saveRole(Role role) {
        // You can add validation logic here if needed
        roleRepository.save(role);
    }
    public List<Role> findAll(){
    	return (List<Role>) roleRepository.findAll();
    }
    public void deleteRole(int id) {
    	 roleRepository.deleteById(id);
    }
    public Role updateRole(Role role) {
    	return roleRepository.save(role);
    }

    public Role findById(int id) {
    	return roleRepository.findById(id).get();
    }
    
    public List<Role> searchRole(String query){
    	
    	List<Role> roles = (List<Role>) roleRepository.findAll();
    	List<Role> matchedRoles = new ArrayList<Role>();

    	for(Role role : roles) {
    		if(role.getName().toLowerCase().contains(query.toLowerCase())) {
    			matchedRoles.add(role);
    		}
    	}
    	
    	return matchedRoles;
    }
}
