package com.shoppingsystem.service;

import java.util.List;

import com.shoppingsystem.entity.Admin;


public interface AdminService {

	void save(Admin admin);
	
	void delete(int admin_id);
	
	void update(Admin admin);
	
	Admin findById(int admin_id);
	
	List<Admin> getQuery(String hql);

}
