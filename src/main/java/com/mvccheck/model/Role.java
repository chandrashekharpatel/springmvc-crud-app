package com.mvccheck.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name = "roles")
public class Role {
	
  @Id
  @Column(name = "id")
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int id;
  @Column(unique = true)
  private String name;
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
public Role(int id, String name) {
	super();
	this.id = id;
	this.name = name;
}
public Role() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Role [id=" + id + ", name=" + name + "]";
}

  
}