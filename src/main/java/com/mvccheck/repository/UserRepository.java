package com.mvccheck.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mvccheck.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

}
